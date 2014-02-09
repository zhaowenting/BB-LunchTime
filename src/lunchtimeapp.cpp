/*
 * lunchtimeapp.cpp
 *
 *  Created on: Feb 9, 2014
 *      Author: wentingzhao
 */

#include "lunchtimeapp.h"

//#include <bb/cascades/Page>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/NavigationPane>

using namespace bb::cascades;

LunchTimeApp::LunchTimeApp() {
	// Obtain a QMLDocument and load it into the qml variable, using build patterns.
	QmlDocument *qml = QmlDocument::create("asset:///main.qml").parent(this);

	// If the QML document is valid, we process it.
	if (!qml->hasErrors()) {

		// The application NavigationPane is created from QML.
		NavigationPane *navPane = qml->createRootObject<NavigationPane>();

		if (navPane) {
			qml->setContextProperty("lunchtimeApp", this);

			// Set the main scene for the application to the NavigationPane.
			Application::instance()->setScene(navPane);

			// Initialize the sound manager with a directory that resides in the
			// assets directory which only contains playable files.

			mSoundManager = new SoundManager("sounds/");
		}
//        // Create the application Page from QMLDocument.
//        Page *appPage = qml->createRootObject<Page>();
//
//        if (appPage) {
//
//            // Set the context property we want to use from inside the QML document. Functions exposed
//            // via Q_INVOKABLE will be found with this property and the name of the function.
//            qml->setContextProperty("lunchtimeApp", this);
//
//            // Initialize the sound manager with a directory that resides in the
//            // assets directory which only contains playable files.
//            mSoundManager = new SoundManager("sounds/");
//
//            // Set the main scene for the application to the Page.
//            Application::instance()->setScene(appPage);
//
//        }
	}
}

LunchTimeApp::~LunchTimeApp() {
	// Destroy the sound manager.
	delete mSoundManager;
}

void LunchTimeApp::playSound(const QString &msg) {
	// Play sound determined by QString parameter
	mSoundManager->play(msg);
}

