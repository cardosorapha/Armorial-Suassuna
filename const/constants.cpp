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

#include "constants.h"

int MRCConstants::_threadFrequency           = 60; // frequencia das threads criadas
int MRCConstants::_guiUpdateFrequency        = 30;  // frequencia de update da GUI

/* Fast Path Planning */
float MRCConstants::_FPPBallThreshHold       = 0.2f;
float MRCConstants::_FPPRobotThreshHold      = 0.09f;
float MRCConstants::_FPPBreakDistance        = 0.42f;
float MRCConstants::_FPPSmoothPathResolution = 0.3f;

/* Soccer constants */
int MRCConstants::_qtPlayers                 = 12;
float MRCConstants::_maxKickPower            = 6.0;
float MRCConstants::_robotRadius             = 0.09f;
float MRCConstants::_ballRadius              = 0.025f;

/* Ball Sensor constants */
float MRCConstants::_distToConsiderBallMovement = 0.12;

/* Colors */
std::string MRCConstants::red = "\033[1;31m";
std::string MRCConstants::green = "\033[1;32m";
std::string MRCConstants::yellow = "\033[1;33m";
std::string MRCConstants::blue = "\033[1;34m";
std::string MRCConstants::magenta = "\033[1;35m";
std::string MRCConstants::cyan = "\033[1;36m";
std::string MRCConstants::defaultBold = "\033[1m";
std::string MRCConstants::reset = "\033[0m";

MRCConstants::MRCConstants()
{

}
