#include "player.h"
#include <entity/contromodule/mrcteam.h>
#include <entity/player/playeraccess.h>
#include <entity/player/behaviour/behaviour.h>

#include <entity/contromodule/grsSimulator/grsSimulator.h>

QString Player::name(){
    return "Player #"+QString::number((int)_team->teamId())+":"+QString::number((int)_playerId);
}

Player::Player(World *world, MRCTeam *team, Controller *ctr, quint8 playerID, Behaviour *defaultBehaviour, SSLReferee *ref, grsSimulator *grSim, PID *vxPID, PID *vyPID, PID *vwPID) : Entity(Entity::ENT_PLAYER){
    _world = world;
    _team = team;
    _playerId = playerID;
    _ref = ref;
    _ctr = ctr;
    _behaviour = NULL;
    _defaultBehaviour = defaultBehaviour;
    _playerAccessSelf = new PlayerAccess(true, this, team->loc());
    _playerAccessBus = new PlayerAccess(false, this, team->loc());

    _vxPID = vxPID;
    _vyPID = vyPID;
    _vwPID = vwPID;

    // Idle control
    _idleCount = 0;

    // Reset player
    reset();

    // grSimulator for test
    _grSim = grSim;
}

Player::~Player(){
    if(_defaultBehaviour != NULL)
        delete _defaultBehaviour;
    if(_playerAccessSelf != NULL)
        delete _playerAccessSelf;
    if(_playerAccessBus != NULL)
        delete _playerAccessBus;
}

PlayerAccess* Player::access() const {
    return _playerAccessBus;
}

void Player::reset(){
    // Errors
    _lError = 0.015;
    _aError = Angle::toRadians(4.0);
}

/* player info methods */
quint8 Player::playerId() const{
    return _playerId;
}

quint8 Player::teamId() const{
    return _team->teamId();
}

quint8 Player::opTeamId() const{
    return _team->teamId() ? 0 : 1;
}

/* Entity inherit virtual methods */
void Player::initialization(){
    printf("[TEAM %d PLAYER %2d] thread started.\n", (int)_team->teamId(), (int)playerId());
}

void Player::loop(){
    // Lock for read wm
    _world->wmLockRead();

    if(position().isUnknown()){
        if(_idleCount < IDLE_COUNT){
            _idleCount++;
            idle();
        }
    }
    else{
        _idleCount = 0;

        _mutexBehaviour.lock();
        if(_behaviour != NULL){
            if(_behaviour->isInitialized() == false){
                _behaviour->initialize(_team->loc());
            }
            _behaviour->setPlayer(this, _playerAccessSelf);
            _behaviour->runBehaviour();
        }else if(_defaultBehaviour != NULL){
            if(_defaultBehaviour->isInitialized() == false){
                _defaultBehaviour->initialize(_team->loc());
            }
            _defaultBehaviour->setPlayer(this, _playerAccessSelf);
            _defaultBehaviour->runBehaviour();
        }else{
            std::cout << "[ERROR] No behaviour found for player #" << (int)playerId() << "!" << std::endl;
        }
        _mutexBehaviour.unlock();
    }

    // Unlock wm for read
    _world->wmUnlock();
}

QString Player::getBehaviourName() {
    _mutexBehaviour.lock();
    QString behaviourName;
    if(_behaviour == NULL)
        behaviourName = "UNKNOWN";
    else
        behaviourName = _behaviour->name();
    _mutexBehaviour.unlock();
    return behaviourName;
}

void Player::setBehaviour(Behaviour* b) {
    // Check same behavior
    if(b==_behaviour)
        return;
    // Set new
    _mutexBehaviour.lock();
    _behaviour = b;
    this->reset();
    _mutexBehaviour.unlock();
}

void Player::finalization(){
    if(isEnabled()){
        for(int i = 0; i < IDLE_COUNT; i++){
            this->idle();
            this->msleep(this->loopTime()/4);
        }
    }
    printf("[TEAM %d PLAYER %2d] thread ended.\n", (int)_team->teamId(), (int)playerId());
}

/* Auxiliary Methods */

Position Player::position() const{
    return _team->wm()->playerPosition(_team->teamId(), _playerId);
}

Position Player::nextPosition() const{
    return this->_nextPosition;
}

Angle Player::orientation() const{
    return _team->wm()->playerOrientation(_team->teamId(), _playerId);
}

Angle Player::nextOrientation() const{
    return this->_nextOrientation;
}

Velocity Player::velocity() const{
    return _team->wm()->playerVelocity(teamId(), _playerId);
}

AngularSpeed Player::angularSpeed() const{
    return _team->wm()->playerAngularSpeed(teamId(), _playerId);
}

float Player::lastSpeed() const{
    return this->_lastSpeedAbs;
}

Angle Player::nextDirection() const{
    return this->_nextDirection;
}

bool Player::isLookingTo(const Position &pos) const{
    return this->isLookingTo(pos, _aError);
}

bool Player::isLookingTo(const Position &pos, float error) const{
    Angle angle(true, WR::Utils::getAngle(position(), pos));

    // Calc diff
    float dif = fabs(WR::Utils::angleDiff(orientation(), angle));
    return (dif <= error);
}

bool Player::isAtPosition(const Position &pos) const{
    // Get distance
    const float distance = WR::Utils::distance(position(), pos);
    return (distance <= _lError);
}

bool Player::isNearbyPosition(const Position &pos, float error) const{
    const float distance = WR::Utils::distance(position(), pos);

    return (distance <= error);
}

bool Player::hasBallPossession() const{
    //return _team->wm()->ballPossession(teamId(), _playerId);
}

bool Player::canKickBall() const{
    //return _ref->getGameInfo(_team->teamColor())->canKickBall();
}

float Player::distanceTo(const Position &pos) const{
    return WR::Utils::distance(position(), pos);
}

float Player::distBall() const{
    //return WR::Utils::distance(position(), _team->loc()->ball());
}

float Player::distOurGoal() const{
    //return WR::Utils::distance(position(), _team->loc()->ourGoal());
}

float Player::distTheirGoal() const{
    //return WR::Utils::distance(position(), _team->loc()->theirGoal());
}

Angle Player::angleTo(const Position &pos) const{
    return Angle(true, WR::Utils::getAngle(position(), pos));
}

/* Locomotion algorithms */

void Player::idle(){
    // Set current position/orientation as desired
    _nextPosition = position();
    _nextOrientation = orientation();

    // Set speed to 0
    setSpeed(0.0, 0.0, 0.0);

    // Reset navigation algorithm
    //
}

void Player::setSpeed(float x, float y, float theta) {
    // tem que fazer ajustes com os pids
    _grSim->setSpeed((int)_team->teamId(), (int)playerId(), x, y, theta);
}

// exemplo de skill
std::pair<float, float> Player::GoTo(double robot_x, double robot_y, double point_x, double point_y, double robotAngle, double offset){
    // Define a velocidade do robô para chegar na bola
    long double Vx = (point_x - robot_x);
    long double Vy = (point_y - robot_y);
    long double theta = robotAngle;
    long double moduloDistancia = sqrt(pow(Vx,2)+pow(Vy,2));
    double vxSaida = (Vx * cos(theta) + Vy * sin(theta));
    double vySaida = (Vy * cos(theta) - Vx * sin(theta));
    double sinal_x = 1;
    double sinal_y = 1;

    if(vxSaida < 0) sinal_x = -1;
    if(vySaida < 0) sinal_y = -1;
/*
    if(moduloDistancia > _distBall){
        vxSaida = std::min(fabs(vxSaida)*0.7, 2.0);
        vySaida = std::min(fabs(vySaida)*0.7, 2.0);
    } else {
        vxSaida = 0;
        vySaida = 0;
    }
*/
    if(moduloDistancia <= _distBall){
        vxSaida = 0;
        vySaida = 0;

        return std::make_pair(0.0, 0.0);
    }

    double newVX = _vxPID->calculate(vxSaida, velocity().x());
    double newVY = _vyPID->calculate(vySaida, velocity().y());
    //setSpeed(vxSaida * sinal_x, vySaida * sinal_y, 0.0);
    //setSpeed(newVX, newVY, 0.0);

    return std::make_pair(newVX, newVY);
}

float Player::RotateTo(double robot_x, double robot_y, double point_x, double point_y, double angleOrigin2Robot) {
    // Define a velocidade angular do robô para visualizar a bola
    long double vectorRobot2BallX = (point_x - robot_x);
    long double vectorRobot2BallY = (point_y - robot_y);
    long double modVectorRobot2Ball = sqrt(pow(vectorRobot2BallX, 2) + pow(vectorRobot2BallY, 2));

    vectorRobot2BallX = vectorRobot2BallX / modVectorRobot2Ball;

    long double angleOrigin2ball;   //Ângulo que a bola faz com o eixo x em relação ao robô
    long double angleRobot2Ball;    //Ângulo que a visão do robô faz com a posição da bola em relação ao robô

    if(vectorRobot2BallY < 0){ //terceiro e quadrante
        angleOrigin2ball = 2*M_PI - acos(vectorRobot2BallX); //angulo que a bola faz com o eixo x em relação ao robo
    }else{ //primeiro e segundo quadrante
        angleOrigin2ball = acos(vectorRobot2BallX); //angulo que a bola faz com o eixo x em relação ao robo
    }

    long double minValue = 1.7;
    long double maxValue = 3.0;

    long double speed = 0.0;

    angleRobot2Ball = angleOrigin2Robot - angleOrigin2ball;

    if(fabs(angleRobot2Ball) >= M_PI / 52.0){
        if(abs(angleRobot2Ball) < minValue){
            if(angleRobot2Ball < 0.0){
                if (speed != 0.0 && angleRobot2Ball < 0.2) speed = -minValue;    //Inverte a velocidade para frenagem
                else speed = minValue;
                speed = minValue;
            }else{
                if (speed != 0.0 && angleRobot2Ball < 0.2) speed = minValue;     //Inverte a velocidade para frenagem
                else speed = -minValue;
                speed = -minValue;
            }
        }else{
            if(angleRobot2Ball < 0.0){
                if(angleRobot2Ball < -M_PI) speed = -maxValue;
                else speed = maxValue;
            }else{
                if(angleRobot2Ball < M_PI) speed = -maxValue;
                else speed = maxValue;
            }
        }
    }else{
        speed = 0;
    }


    double newSpeed = _vwPID->calculate(speed, angularSpeed().value());
    //setSpeed(0.0, 0.0, speed);
    //setSpeed(0.0, 0.0, newSpeed);

    return newSpeed;
}

void Player::goToLookTo(double robot_x, double robot_y, double point_x, double point_y, double aim_x, double aim_y, double angleOrigin2Robot, double offset){
    // Configura o robô para ir até a bola e olhar para um alvo
    std::pair<float, float> a;
    double p_x, p_y, angle, moduloDist, final_x, final_y;
    if (point_x == aim_x) angle = 1.570796327;
    else angle = atan((point_y - aim_y)/(point_x - aim_x));
    if (aim_x > point_x) {
        p_y = point_y - offset * sin(angle);
        p_x = point_x - offset * cos(angle);
    } else {
        p_y = point_y + offset * sin(angle);
        p_x = point_x + offset * cos(angle);
    }
    moduloDist = sqrt(pow((p_x - robot_x), 2) + pow((p_y - robot_y), 2));
    final_x = (p_x - robot_x)/moduloDist;
    final_y = (p_y - robot_y)/moduloDist;
    a = GoTo(robot_x, robot_y, p_x + offset * final_x, p_y + offset * final_y, angleOrigin2Robot, offset);
    float theta = RotateTo(robot_x, robot_y, aim_x, aim_y, angleOrigin2Robot);

    setSpeed(a.first, a.second, theta);
}

void Player::AroundTheBall(double robot_x, double robot_y, double point_x, double point_y, double robotAngle, double offset){
    // Configura o robô para ir até a bola e girar em torno dela
    std::pair<float, float> a;
    long double moduloDistancia = sqrt(pow((point_x - robot_x),2)+pow((point_y - robot_y),2));
    a = GoTo(robot_x, robot_y, point_x, point_y, robotAngle, offset);
    float theta = RotateTo(robot_x, robot_y, point_x, point_y, robotAngle);

    if (moduloDistancia < offset) setSpeed(0, 0.2, theta); //3% de diferença nas velocidades
    else setSpeed(a.first, a.second, theta);
}

void Player::Dribble(){}