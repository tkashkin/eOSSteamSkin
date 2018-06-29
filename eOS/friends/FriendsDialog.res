"Friends/FriendsDialog.res"
{  
	styles
	{
        FriendsPanel
        {
            bgcolor=none
            corner_rounding=5
            minimum-width=286
            minimum-height=512
            render_bg
            {
                0="gradient(x0, y0, x1, y0+48, eOSInactiveTitleTop, eOSInactiveTitleBottom)"
                1="fill(x0, y0+47, x1, y0+48, eOSInactiveTitleBorder)"
                2="gradient(x0, y0+48, x1, y0+72, eOSInactiveSubHeaderTop, eOSInactiveSubHeaderBottom)"
                4="fill(x0, y0+73, x1, y1-49, eOSInactiveWindowBG)"
                5="fill(x0, y1-49, x1, y1, eOSSidebarBG)"
                6="fill(x0, y1-49, x1, y1-48, eOSSidebarBorder)"
            }
            render
            {
                0="fill(x0, y0+72, x1, y0+73, eOSInactiveTitleBorder)" // moved from render_bg to fix list overlapping tabs bottom border
                
                10="fill(x0, y0, x0 + 1, y1, eOSInactiveTitleBorder)"
                11="fill(x0, y0, x1, y0 + 1, eOSInactiveTitleBorder)"
                12="fill(x1 - 1, y0, x1, y1, eOSInactiveTitleBorder)"
                13="fill(x0, y1 - 1, x1, y1, eOSInactiveTitleBorder)"
            }
        }
        FriendsPanel:framefocus
        {
            render_bg
            {
                0="gradient(x0, y0, x1, y0+48, eOSTitleTop, eOSTitleBottom)"
                1="fill(x0, y0+47, x1, y0+48, eOSTitleBorder)"
                2="gradient(x0, y0+48, x1, y0+72, eOSSubHeaderTop, eOSSubHeaderBottom)"
                4="fill(x0, y0+73, x1, y1-49, eOSWindowBG)"
                5="fill(x0, y1-49, x1, y1, eOSSidebarBG)"
                6="fill(x0, y1-49, x1, y1-48, eOSSidebarBorder)"
            }
            render
            {
                0="fill(x0, y0+72, x1, y0+73, eOSTitleBorder)" // moved from render_bg to fix list overlapping tabs bottom border
                
                10="fill(x0, y0, x0 + 1, y1, eOSTitleBorder)"
                11="fill(x0, y0, x1, y0 + 1, eOSTitleBorder)"
                12="fill(x1 - 1, y0, x1, y1, eOSTitleBorder)"
                13="fill(x0, y1 - 1, x1, y1, eOSTitleBorder)"
            }
        }

		AddFriendsButton
		{
			font-family=basefont
			font-size=0
			textcolor=none
			bgcolor=none
			minimum-width=32
			minimum-height=32
			
			render_bg
			{
				0="image(x0, y0, x1, y1, graphics/eos/buttons/addfriend/addfriend)"
			}
		}
		AddFriendsButton:active
		{
			render_bg
			{
				0="image(x0, y0, x1, y1, graphics/eos/buttons/addfriend/addfriend_down)"
			}
		}

		AddFriendsButton [$OSX]
		{
			minimum-width=27
			minimum-height=24
			
			render_bg
			{
				0="image(x0, y0, x1, y1, graphics/mac/buttons/addfriend/addfriend)"
			}
		}
		AddFriendsButton:active [$OSX]
		{
			render_bg
			{
				0="image(x0, y0, x1, y1, graphics/mac/buttons/addfriend/addfriend_down)"
			}
		}
	}
 	
 	layout
 	{
 		region { name="hidden" x=0 y=0 width=0 height=0 }
		place { control="frame_title,friends_search_icon" region="hidden" x=0 y=0 width=0 height=0 }
		
		place [$LINUX] { control="frame_close,frame_minimize" margin-left=6 y=12 width=24 height=24 spacing=6 }
		place [$LINUX] { control="frame_maximize" region="hidden" x=0 y=0 width=0 height=0 } // hidden
		//place [$LINUX] { control="frame_minimize" region="hidden" x=0 y=0 width=0 height=0 } // hidden
		
		place [$WINDOWS] { control="frame_minimize,frame_maximize,frame_close" align=right height=48 spacing=-8 }

		place [$OSX] { control="frame_close,frame_minimize,frame_maximize"  margin-left=9 margin-top=16 height=16 }
		
		place { control="frame_captiongrip" width=max height=48 }
		
		place [!$OSX] { control="addFriendsButton" x=80 y=8 }
		place [$OSX] { control="addFriendsButton" x=80 y=12 }
		
		place [!$LINUX] { control="MenuBar" align=right y=8 width=32 height=32 margin-right=6 }
		place [$LINUX] { control="MenuBar" align=right y=8 width=32 height=32 margin-right=6 }
		
		place { control="friends_search" align=right end-right="MenuBar" y=12 width=100 height=24 margin-right=8 }

		place { control="FriendsDialogSheet" x=0 y=44 width=max height=max margin-bottom=49 }

		place { control="FriendPanelSelf" x=0 y=0 align=bottom width=max }
 	}
 	
}


