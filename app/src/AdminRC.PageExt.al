pageextension 50120 "ABC FU Admin RC" extends "Administrator Main Role Center"
{
    layout
    {
        addfirst(RoleCenter)
        {
            part("BYDCUCues"; "BYD CU Cues Activities") { ApplicationArea = All; }
            part("BYDCUCuesVariable"; "BYD CU Cues Act. Variable") { ApplicationArea = All; Visible = false; }
        }
    }
}