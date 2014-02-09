/*
 * lunchtimeapp.h
 *
 *  Created on: Feb 9, 2014
 *      Author: wentingzhao
 */

#ifndef LUNCHTIMEAPP_H_
#define LUNCHTIMEAPP_H_

#include <bb/cascades/Application>
#include "soundmanager.h"

/**
 * LunchTimeApp Description:
 *
 */

class LunchTimeApp: public QObject {

	Q_OBJECT

public:

	// This is our constructor to setup our LunchTime application
	LunchTimeApp();

	// This is our destructor that frees the memory of the sound manager
	~LunchTimeApp();

	/**
	 * This Invokable function is used for triggering sounds from the QML file.
	 * @param msg A string describing which sound should be played
	 */
	Q_INVOKABLE
	void playSound(const QString &msg);

private:
	// The sound manager
	SoundManager *mSoundManager;

};

#endif /* LUNCHTIMEAPP_H_ */
