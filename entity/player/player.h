/***
 * Maracatronics Robotics
 * Federal University of Pernambuco (UFPE) at Recife
 * http://www.maracatronics.com/
 *
 * This file is part of Armorial project.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 ***/

#ifndef PLAYER_H
#define PLAYER_H

#include <entity/entity.h>
#include <entity/world/world.h>
#include <utils/utils.hh>
#include <entity/player/baseplayer.h>
#include <bits/stdc++.h>
#include <entity/locations.h>
#include <entity/player/control/pid.h>

#define IDLE_COUNT 10

class Player : public Entity
{
public:
    Player(World *world, MRCTeam *team, Controller *ctr, quint8 playerID, Role *defaultRole, SSLReferee *ref, PID *vxPID, PID *vyPID, PID *vwPID, NavigationAlgorithm *navAlg, MRCConstants *mrcconstants);
    ~Player();
    QString name();
    void reset();

    // Player infos
    quint8 playerId() const;
    quint8 teamId() const;
    quint8 opTeamId() const;
    PlayerAccess* access() const;
    Colors::Color teamColor() const;

    // Robot locomotion
    // algoritmos de controle básicos ficam aqui
    void idle();

    // Auxiliary methods
    // Position
    Position position() const;
    Position nextPosition() const;

    // Orientation
    Angle orientation() const;
    Angle nextOrientation() const;

    // Team
    MRCTeam* playerTeam();

    // Velocity
    Velocity velocity() const;
    float lastSpeed() const;
    AngularSpeed angularSpeed() const;

    // Direction
    Angle nextDirection() const;

    // Booleans (checks)
    bool isLookingTo(const Position &pos) const;
    bool isLookingTo(const Position &pos, float error) const;
    bool isAtPosition(const Position &pos) const;
    bool isNearbyPosition(const Position &pos, float error) const;
    bool hasBallPossession() const;
    bool canKickBall() const;

    // Errors
    double aError();
    double lError();

    // Distances
    float distanceTo(const Position &pos) const;
    float distBall() const;
    float distOurGoal() const;
    float distTheirGoal() const;

    // Angles
    Angle angleTo(const Position &pos) const;
    double getPlayerRotateAngleTo(const Position &pos);

    // Player skills
    void setSpeed(float x, float y, float theta);
    std::pair<float, float> goTo(Position targetPosition, bool setHere = true, double minVel = 0.0);
    std::pair<double, double> rotateTo(Position targetPosition, bool setHere = true);
    void goToLookTo(Position targetPosition, Position lookToPosition, bool avoidTeammates, bool avoidOpponents, bool avoidBall, bool avoidOurGoalArea, bool avoidTheirGoalArea, double minVel = 0.0);
    void aroundTheBall(Position targetPosition);
    void kick(float power, bool isChipKick = false);
    void dribble(bool isActive);

    // Limit position
    Position limitFieldDimensions(Position destination);

    // Role
    void setRole(Role *b);
    QString getRoleName();

    // pp
    QLinkedList<Position> getPath() const;
    void setGoal(Position pos);
    std::pair<Angle, float> getNavDirectionDistance(const Position &destination, const Angle &positionToLook, bool avoidTeammates, bool avoidOpponents, bool avoidBall, bool avoidOurGoalArea, bool avoidTheirGoalArea);

    // PID
    void setPidActivated(bool val) { _pidActivated = val; }
    bool isPidActivated() { return _pidActivated; }

private:
    // Entity inherit virtual methods
    void initialization();
    void loop();
    void finalization();
    MRCConstants *getConstants();

    // Player info
    quint8 _playerId;
    int _idleCount;

    // Acceleration control
    float _lastSpeedAbs;

    // Next states info
    Position _nextPosition;
    Angle _nextOrientation;
    Angle _nextDirection;

    // Player related objects
    SSLReferee *_ref;
    MRCTeam *_team;
    PlayerAccess *_playerAccessSelf;
    PlayerAccess *_playerAccessBus;
    MRCConstants *_mrcconstants;

    // World for sync
    World *_world;

    // Controller
    Controller *_ctr;

    // Navigation
    Navigation *_nav;

    // Role
    Role *_role;
    Role *_defaultRole;
    QMutex _mutexRole;

    // errors
    float _lError;
    float _aError;

    // PID's
    bool _pidActivated;
    PID *_vxPID;
    PID *_vyPID;
    PID *_vwPID;


};

#endif // PLAYER_H
