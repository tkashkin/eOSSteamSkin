"steam/cached/UpdateNewsDialog.res"
{
	style
	{
		Button
		{
			render_bg
			{
				0="fill(x0, y0, x1, y1, eOSScrollbarFill)"
			}
		}
	}

	layout
	{
		place { control="HTMLSellPage" x=0 y=22 width=max height=max }

		region { name="navbuttons" x=0 y=0 width=max height=64 align=center }
		place { control="PrevButton" region="navbuttons" x=0 width=24 height=max }
		place { control="NextButton" region="navbuttons" align=right x=0 width=24 height=max }

		region { name="hidden" x=0 y=0 width=0 height=0 }
		place { control="CloseButton" region="hidden" }
	}
}
