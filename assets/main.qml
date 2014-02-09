/* Copyright (c) 2012 BlackBerry Limited.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*--------------------------------------------------------------------------------------------
 * 
 *...##.##....##.......##.....##.##....##..######..##.....##.########.####.##.....##.########
 *...##.##....##.......##.....##.###...##.##....##.##.....##....##.....##..###...###.##......
 *.#########..##.......##.....##.####..##.##.......##.....##....##.....##..####.####.##......
 *...##.##....##.......##.....##.##.##.##.##.......#########....##.....##..##.###.##.######..
 *.#########..##.......##.....##.##..####.##.......##.....##....##.....##..##.....##.##......
 *...##.##....##.......##.....##.##...###.##....##.##.....##....##.....##..##.....##.##......
 *...##.##....########..#######..##....##..######..##.....##....##....####.##.....##.########
 *	   
 *	                                 D E V E L O P E D   B Y
 *
 *	                                    ♥ Wenting Zhao ♥
 *                                      ♛ Joel  Acosta ♛ 
 *                                     
 *                                  BlackBerry Hackathon 2014
 *                                   
 * --------------------------------------------------------------------------------------------
 */

import bb.cascades 1.2

// This is the application Page with a Container as content, all UI components are children to that Container.
NavigationPane {
    // Navigation Pane properties
    id: pane
    backButtonsVisible: false;
    
    
    Page {
        id: mainScreen
        Container {
            layout: DockLayout {
                
            }
            
            // Background ImageView
            ImageView {
                imageSource: "asset:///images/imgMainMenu.png"
                verticalAlignment: VerticalAlignment.Fill
                horizontalAlignment: HorizontalAlignment.Fill
                
                // If we touch the background, we want to play a "naruto" sound.
                onTouch: {
                    if (event.isDown()) {
                        lunchtimeApp.playSound("naruto.wav");
                    }
                
                    pane.push(howToPlayScreen);
                }
            }
            
        } // end of Container
    } // end of Page
    
//    attachedObjects: [
//        ComponentDefinition {
//            id: gamePage
//            source: "GameOn.qml"
//        }
//    ]
    // all the extra pages!!!!!! wierd way of making a game without if/else statements
    attachedObjects: 
    [
        Page 
        {
            id: howToPlayScreen
            content: Container 
            {
                Label 
                {
                    text: "You are playing the best game ever!!!! Remember to choose your food wisely, we know who you are!"
                }
                
                Button 
                {
                    text: "BEGIN PLAYING GAME!"
                    
                    onClicked: 
                    {
                        pane.push(firstLevelScreen);
                    }
                }
            
            
            }
        },
        Page 
        {
            id: firstLevelScreen
            content: Container 
            {
                // padding on the left so that images do not hug the left 
                leftPadding: 200
                
                // StackLayout so that images stack from left to right :)
                layout: StackLayout 
                {
                    orientation: LayoutOrientation.LeftToRight
                }
                
                // good choice
                ImageView 
                {
                    id: firstGood
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    // padding so that the second picture is not right next to it
                    rightMargin: 100
                    
                    onTouch: 
                    {
                        pane.push(secondLevelGoodScreen);
                    }
                }
                
                // bad choice
                ImageView 
                {
                    id: firstBad
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    onTouch: 
                    {
                        pane.push(secondLevelBadScreen);
                    }
                }// end of bad image
            }// end of container
        },
        Page 
        {
            id: secondLevelGoodScreen
            
            content: Container 
            {
                // padding on the left so that images do not hug the left 
                leftPadding: 200
                
                // StackLayout so that images stack from left to right :)
                layout: StackLayout 
                {
                    orientation: LayoutOrientation.LeftToRight
                }
                
                // good choice
                ImageView 
                {
                    id: secondGoodGood
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    // padding so that the second picture is not right next to it
                    rightMargin: 100
                    
                    onTouch: 
                    {
                        pane.push(thirdLevelGoodGoodScreen);
                    }
                }
                
                // bad choice
                ImageView 
                {
                    id: secondGoodBad
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    onTouch: 
                    {
                        pane.push(thirdLevelGoodBadScreen);
                    }
                }// end of bad image
            }
        },
        Page 
        {
            id: secondLevelBadScreen
            
            content: Container 
            {
                // padding on the left so that images do not hug the left 
                leftPadding: 200
                
                // StackLayout so that images stack from left to right :)
                layout: StackLayout 
                {
                    orientation: LayoutOrientation.LeftToRight
                }
                
                // good choice
                ImageView 
                {
                    id: secondBadGood
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    // padding so that the second picture is not right next to it
                    rightMargin: 100
                    
                    onTouch: 
                    {
                        pane.push(thirdLevelBadGoodScreen);
                    }
                }
                
                // bad choice
                ImageView 
                {
                    id: secondBadBad
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    onTouch: 
                    {
                        pane.push(thirdLevelBadBadScreen);
                    }
                }// end of bad image
            }//end of container
        },
        Page 
        {
            id: thirdLevelGoodGoodScreen
            
            content: Container 
            {
                // padding on the left so that images do not hug the left 
                leftPadding: 200
                
                // StackLayout so that images stack from left to right :)
                layout: StackLayout 
                {
                    orientation: LayoutOrientation.LeftToRight
                }
                
                // good choice
                ImageView 
                {
                    id: thirdGoodGoodGood
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    // padding so that the second picture is not right next to it
                    rightMargin: 100
                    
                    onTouch: 
                    {
                        pane.push(healthyHabitScreen);
                    }
                }
                
                // bad choice
                ImageView 
                {
                    id: secondGoodGoodBad
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    onTouch: 
                    {
                        pane.push(moderateMealScreen);
                    }
                }// end of bad image
            }// end of container
        },
        Page 
        {
            id: thirdLevelGoodBadScreen
            
            content: Container 
            {
                // padding on the left so that images do not hug the left 
                leftPadding: 200
                
                // StackLayout so that images stack from left to right :)
                layout: StackLayout 
                {
                    orientation: LayoutOrientation.LeftToRight
                }
                
                // good choice
                ImageView 
                {
                    id: thirdGoodBadGood
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    // padding so that the second picture is not right next to it
                    rightMargin: 100
                    
                    onTouch: 
                    {
                        pane.push(moderateMealScreen);
                    }
                }
                
                // bad choice
                ImageView 
                {
                    id: secondGoodBadGood
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    onTouch: 
                    {
                        pane.push(moderateMealScreen);
                    }
                }// end of bad image
            }// end of container
        },
        Page 
        {
            id: thirdLevelBadGoodScreen
            
            content: Container 
            {
                // padding on the left so that images do not hug the left 
                leftPadding: 200
                
                // StackLayout so that images stack from left to right :)
                layout: StackLayout 
                {
                    orientation: LayoutOrientation.LeftToRight
                }
                
                // good choice
                ImageView 
                {
                    id: thirdBadGoodGood
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    // padding so that the second picture is not right next to it
                    rightMargin: 100
                    
                    onTouch: 
                    {
                        pane.push(moderateMealScreen);
                    }
                }
                
                // bad choice
                ImageView 
                {
                    id: secondBadGoodBad
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    onTouch: 
                    {
                        pane.push(moderateMealScreen);
                    }
                }// end of bad image
            }// end of container
        },
        Page 
        {
            id: thirdLevelBadBadScreen
            
            content: Container 
            {
                // padding on the left so that images do not hug the left 
                leftPadding: 200
                
                // StackLayout so that images stack from left to right :)
                layout: StackLayout 
                {
                    orientation: LayoutOrientation.LeftToRight
                }
                
                // good choice
                ImageView 
                {
                    id: thirdBadBadGood
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    // padding so that the second picture is not right next to it
                    rightMargin: 100
                    
                    onTouch: 
                    {
                        pane.push(moderateMealScreen);
                    }
                }
                
                // bad choice
                ImageView 
                {
                    id: secondBadBadBad
                    imageSource: "asset:///images/imgTapToStart.jpg"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    
                    onTouch: 
                    {
                        pane.push(junkfoodJunkieScreen);
                    }
                }// end of bad image
            }// end of container
        },
        Page 
        {
            id: healthyHabitScreen
            content: Container 
            {
                Label 
                {
                    text: "Great job! Keep up the healthy habits!"
                }
                
                Button 
                {
                    text: "Play game again!"
                    
                    onClicked: 
                    {
                        pane.navigateTo(howToPlayScreen);
                    }
                }
                Button 
                {
                    text: "exit"
                    
                    onClicked: 
                    {
                        Application.quit()
                    }
                }
            }//end of container
        },
        Page 
        {
            id: moderateMealScreen
            content: Container 
            {
                Label 
                {
                    text: "Today you ate a moderate meal during recess. Get back to class!"
                }
                
                Button 
                {
                    text: "play again!!"
                    
                    onClicked: 
                    {
                        pane.navigateTo(howToPlayScreen);
                    }
                }
                Button 
                {
                    text: "exit"
                    
                    onClicked: 
                    {
                        Application.quit()
                    }
                }
            }//end of container
        },
        Page 
        {
            id: junkfoodJunkieScreen
            content: Container 
            {
                Label 
                {
                    text: "OMG!!! Watch out what you eat Junkfood Junkie!"
                }
                
                Button 
                {
                    text: "play again!"
                    
                    onClicked: 
                    {
                        pane.navigateTo(howToPlayScreen);
                    }
                }
                Button 
                {
                    text: "exit"
                    
                    onClicked: 
                    {
                        Application.quit()
                    }
                }
            }// end of container
        }// end of page
    ] // end of attachedObjects list
//            
//            //        // The bell
//            //        ImageView {
//            //            id: bell
//            //            imageSource: "asset:///images/bell.png"
//            //            preferredWidth: 503
//            //            preferredHeight: 768
//            //            layoutProperties: AbsoluteLayoutProperties {
//            //                positionX: 582
//            //                positionY: -50
//            //            }
//            //
//            //            // The bell should rotate around a point located in the middle of
//            //            // the image in X-direction and located somewhere above the screen
//            //            // in Y-direction (it hangs around the neck of the cow which is not visible).
//            //            // If the center is not altered all rotation animations will be around
//            //            // the middle of the image.
//            //            pivotY: -600
//            //            
//            //            // The bell is initially hidden.
//            //            rotationZ: -90 
//            //            
//            //            // We need two animations: one to swing to the left and one to swing to the right.
//            //            animations: [
//            //                // Left
//            //                SequentialAnimation {
//            //                    id: animLeft
//            //                    animations: [
//            //                        RotateTransition {
//            //                            toAngleZ: -5
//            //                            duration: 200
//            //                            easingCurve: StockCurve.QuadraticInOut
//            //                        },
//            //                        RotateTransition {
//            //                            toAngleZ: 0
//            //                            duration: 300
//            //                            easingCurve: StockCurve.QuadraticInOut
//            //                        }
//            //                    ]
//            //                },
//            //                // Right
//            //                SequentialAnimation {
//            //                    id: animRight
//            //                    animations: [
//            //                        RotateTransition {
//            //                            toAngleZ: 5
//            //                            duration: 200
//            //                            easingCurve: StockCurve.QuadraticInOut
//            //                        },
//            //                        RotateTransition {
//            //                            toAngleZ: 0
//            //                            duration: 300
//            //                            easingCurve: StockCurve.QuadraticInOut
//            //                        }
//            //                    ]
//            //                },
//            //                // An animation that is run when the application starts, triggered in the 
//            //                // onCreationCompleted signal handler below.
//            //                SequentialAnimation {
//            //                    id: animIntro
//            //                    animations: [
//            //                        RotateTransition {
//            //                            fromAngleZ: -90
//            //                            toAngleZ: 30
//            //                            duration: 300
//            //                            delay: 400
//            //                            easingCurve: StockCurve.QuadraticInOut
//            //                        },
//            //                        RotateTransition {
//            //                            toAngleZ: -15
//            //                            duration: 300
//            //                            easingCurve: StockCurve.QuadraticInOut
//            //                        },
//            //                        RotateTransition {
//            //                            toAngleZ: 5
//            //                            duration: 300
//            //                            easingCurve: StockCurve.QuadraticInOut
//            //                        },
//            //                        RotateTransition {
//            //                            toAngleZ: -1.5
//            //                            duration: 300
//            //                            easingCurve: StockCurve.QuadraticInOut
//            //                        },
//            //                        RotateTransition {
//            //                            toAngleZ: 0
//            //                            duration: 300
//            //                            easingCurve: StockCurve.QuadraticInOut
//            //                        }
//            //                    ]
//            //                }
//            //            ]
//            //
//            //            // Touch handler for the bell image
//            //            onTouch: {
//            //                if (event.isDown()) {
//            //
//            //                    // Do not trigger the bell sound if the touch occurred on the image, but outside the
//            //                    // actual bell (above or below).
//            //                    if (event.windowY > 140 && event.windowY < (preferredHeight - 60)) {
//            //
//            //                        // Play the sound.
//            //                        lunchtimeApp.playSound("cowbell.wav");
//            //
//            //                        // If the image is hit on the left side, swing it to the right.
//            //                        if (event.windowX < bell.layoutProperties.positionX + preferredWidth / 2) {
//            //
//            //                            // Stop the animation before playing it to stop the moving bell and
//            //                            // run the animation from that position
//            //                            animLeft.stop ();
//            //                            animLeft.play ();
//            //
//            //                        } else {
//            //                            // And vice-versa for the right side.
//            //                            animRight.stop ();
//            //                            animRight.play ();
//            //                        }
//            //                    }
//            //                }
//            //            }// Touch handler for bell image
//            //            
//            //            onCreationCompleted: {
//            //                // When the Control has been created run the intro animation.
//            //                animIntro.play();
//            //            }
//            //        }// ImageView 
//    
}

