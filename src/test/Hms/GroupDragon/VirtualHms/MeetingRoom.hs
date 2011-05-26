---------------------------------------------------------
{-
	Module		: MeetingRoom
	Name		: Azeem Mumtaz	
	Script		: MeetingRoom.hs -> The Gaming Strategy
				  inside the meeting room
-}
---------------------------------------------------------

module MeetingRoom where

import Data.Map

menuMap				:: Map Integer String
menuMap 			= fromList [(1, "Start a session"), 
								(2, "Participate for a session"), 
								(3, "Request a projector"), 
								(4, "Request to join a session") , 
								(5, "Leave Room")]

functionMap			:: Map
functionMap 		= fromList [(1, even),
								(2, odd)]
								

printMenu			:: [(Integer, String)] -> IO ()
printMenu []		= putStr ""
printMenu (x:xs)	= 
	do 
		putStrLn $ (++) "\t" $ (++) "(" $ (++) (show (fst x)) $ (++) ") " (snd x)
		printMenu xs


meetingRoom			:: Map k a -> Map k a
meetingRoom x		= x

meetingRoom			:: IO ()
meetingRoom			= 
	do
		header
		printMenu $ toList menuMap
		putStr "\n\t\tYour Selection: "
		option <- getOption
		subMenuRouter option
		putStrLn "hehe"

-- Function: subMenuRouter
{-
	This menu routes through the submenus
-}
subMenuRouter		:: Int -> IO ()
subMenuRouter x		=
	do
		if (member (toInteger x) menuMap)
			then
				putStrLn (show x)
			else 
				putStrLn (show x)
		
-- Function: header
{-
	This fancy function displays the header 
-}		
header		:: IO ()
header		=
	do
		putStrLn "\n\t---------------------------------"
		putStrLn "\t You are now in the Meeting Room"
		putStrLn "\t---------------------------------"
		
-- Function: getOption
{-
	This function converts an IO String to Int
-}
getOption 			:: IO Int
getOption 			= 
	do 
		s <- getLine
		return (read s :: Int)