#ifndef BEHAVIOUR_FOLLOWBALL_H
#define BEHAVIOUR_FOLLOWBALL_H

<<<<<<< Updated upstream

class behaviour_followball
{
public:
    behaviour_followball();
};

#endif // BEHAVIOUR_FOLLOWBALL_H
=======
#include <entity/player/behaviour/behaviour.h>
#include <entity/player/skills/skills_include.h>

class Behaviour_FollowBall : public Behaviour {
private:
    void configure();
    void run();
    Skill_GoToLookTo *_skill_GoToLookTo;
    double _distBall;
public:
    Behaviour_FollowBall();
    QString name();
};

#endif // BEHAVIOUR_FOLLOWBALL_H
>>>>>>> Stashed changes
