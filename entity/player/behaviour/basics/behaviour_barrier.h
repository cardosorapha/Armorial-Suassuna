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

#ifndef BEHAVIOUR_BARRIER_H
#define BEHAVIOUR_BARRIER_H

#include <entity/player/behaviour/behaviour.h>
#include <entity/player/skills/skills_include.h>
#include <utils/line/line.hh>

class Behaviour_Barrier : public Behaviour {
private:
    void configure();
    void run();
    int _state;

    /// Parameters
    // Mark player
    bool _markNearestPlayer;
    quint8 _markPlayerId;

    // Distance from GK line
    float _distanceFromGK;

    // Radius from goal center
    float _radius;

    // Takeout params
    float _interceptRadius;
    bool _canTakeout;
    bool _avoidAllies;

    // Sk
    Skill_GoToLookTo *_sk_goto;
    Skill_InterceptBall *_sk_gk;
    Skill_PushBall *_sk_push;

    // Transitions
    enum{
        STATE_GOTO,
        STATE_GK,
        STATE_PUSH
    };

    //Attacker
    quint8 getBestAttacker();
    bool _notAlreadyChosen;
    quint8 _bestAtt;

    // Auxiliary
    bool isBallComingToGoal(float minSpeed, float postsFactor = 1.0);
    bool isBehindBall(Position posObjective);
    bool isBallComing(float minVelocity, float radius);

public:
    Behaviour_Barrier();
    QString name();

    void setDistanceFromGk(float distanceFromGK) { _distanceFromGK = distanceFromGK; }
    void setRadius(float radius) { _radius = radius; }
    float getRadius() { return _radius; }
    void setAvoidAllies(bool avoidAllies) { _avoidAllies = avoidAllies; }
    void setMarkPlayer(quint8 playerId) { _markNearestPlayer = true; _markPlayerId = playerId; }
    void setMarkBall() { _markNearestPlayer = false; }
    void setCanTakeout(bool canTakeout) { _canTakeout = canTakeout; }
    void setInterceptRadius(float interceptRadius) { _interceptRadius = interceptRadius; }
};

#endif // BEHAVIOUR_BARRIER_H
