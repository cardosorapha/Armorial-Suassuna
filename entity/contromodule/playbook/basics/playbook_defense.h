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

#ifndef PLAYBOOK_DEFENSE_H
#define PLAYBOOK_DEFENSE_H

#include <entity/contromodule/playbook/playbook.h>
#include <entity/player/role/mrcroles.h>

typedef struct{
    int player, target;
    int val;
    bool ok;
} marcation;
#define inf 100000001

class Playbook_Defense : public Playbook {
private:
    // Roles
    Role_Goalkeeper *_rl_gk;
    QList<Role_Defender*> _rl_def;
    Role_Defensive_Midfielder *_rl_def_midf;
    MRCConstants *_mrcconstants;

    // Mark
    QList<quint8> markList;
    QList<Position> markPositions;
    void resetMarkList();
    quint8 requestMarkPlayer(quint8 playerId);

    // Goalie
    quint8 _goalieId;

    void configure(int numPlayers);
    void run(int numPlayers);
    int maxNumPlayer();

    // Dynamic barriers DP
    marcation dp[32][32][32];
    int weight[32][32];
    int n_allies;
    int n_targets;
    int search(int actualAllieMask, int actualTargetMask, int actualPlayer, int actualTarget);
    std::pair<int, int> solve();
public:
    Playbook_Defense();
    QString name();

    void setGoalieId(quint8 goalieId) { _goalieId = goalieId; }
};

#endif // PLAYBOOK_DEFENSE_H
