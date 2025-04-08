Page 50120 "ABC FU My Custom Role Center"
{
    Caption = 'My Custom Role Center', Comment = 'Use same translation as ''Profile Description'' (if applicable)';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            part(Control76; "Headline RC Accountant")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Control99; "Finance Performance")
            {
                ApplicationArea = Basic, Suite;
                Visible = false;
            }
            part(Control1902304208; "Accountant Activities")
            {
                ApplicationArea = Basic, Suite;
            }
            part("BYD CU Cues"; "BYD CU Cues Activities") { ApplicationArea = All; }
            part("BYD CU Cues Variable"; "BYD CU Cues Act. Variable") { ApplicationArea = All; Visible = false; }
        }
    }
}