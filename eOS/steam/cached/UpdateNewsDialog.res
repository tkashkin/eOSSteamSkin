"steam/cached/UpdateNewsDialog.res"
{
	styles
	{
		CProductMarketingDialog
        {
            bgcolor=none
            render_bg
            {
                0="gradient(x0, y0, x1, y0+32, eOSInactiveTitleTop, eOSInactiveTitleBottom)"
                1="fill(x0, y0+31, x1, y0+32, eOSInactiveTitleBorder)"
            }
        }
		CProductMarketingDialog:framefocus
        {
            render_bg
            {
                0="gradient(x0, y0, x1, y0+32, eOSTitleTop, eOSTitleBottom)"
                1="fill(x0, y0+31, x1, y0+32, eOSTitleBorder)"
            }
        }
	}

	layout
	{
		place [!$OSX] { control="frame_title" x=144 y=0 align=center height=32 }
		place [$OSX] { control="frame_title" x=0 y=0 width=max height=32 }
		
		place [$LINUX] { control="frame_close,frame_minimize" margin-left=6 y=4 width=24 height=24 spacing=6 }
		place [$LINUX] { control="frame_maximize" align=right margin-right=6 y=4 width=24 height=24 }
		
		//place [$LINUX] { control="frame_minimize" region="hidden" }
		
		place [$WINDOWS] { control="frame_minimize,frame_maximize,frame_close" align=right height=32 spacing=-8 }

		place [$OSX] { control="frame_close,frame_minimize,frame_maximize" margin-left=9 margin-top=8 height=16 }
		
		place { control="frame_captiongrip" width=max height=32 }

		place { control="HTMLSellPage" x=0 y=32 width=max height=max }

		place [$WINDOWS] { control="PrevButton" x=30 height=32 } 
		place [$LINUX] { control="PrevButton" x=76 y=4 height=24 }
		place [$OSX] { control="PrevButton" x=80 y=4 height=24 }

		place [$WINDOWS] { control="NextButton" align=right margin-right=8 y=4 height=32 } 
		place [!$WINDOWS] { control="NextButton" align=right margin-right=8 y=4 height=24 }

		region { name="hidden" x=0 y=0 width=0 height=0 }
		place { control="CloseButton" region="hidden" }
	}
}
