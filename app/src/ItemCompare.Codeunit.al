codeunit 50120 "ABC FU Item Compare" implements "BYD CU IFunctions"
{
    procedure OnCueClicked()
    begin
        GetItemValues(true);
    end;

    procedure OnCalculateCue(): Variant
    begin
        exit(GetItemValues(false));
    end;

    local procedure GetItemValues(RunPage: Boolean): Variant
    var
        Item: Record Item;
        PageManagement: Codeunit "Page Management";
    begin
        Item.SetLoadFields("Unit Cost", "Unit Price");
        if Item.FindSet() then
            repeat
                if Item."Unit Cost" > Item."Unit Price" then
                    Item.Mark(true);
            until Item.Next() = 0;
        Item.MarkedOnly(true);

        case RunPage of
            true:
                case Item.count() of
                    0, 1:
                        PageManagement.PageRun(Item);
                    else
                        Page.Run(Page::"Item List", Item);
                end;
        end;
        exit(Item.Count());
    end;
}