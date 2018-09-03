pageextension 123456701 "CSD Resource List Ext" extends "Resource List"
{
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }
        // Add changes to page layout here
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
                Style = "Subordinate";
                 }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage();
    begin
        ShowMaxField := true;
        FilterGroup(3);
        ShowType := GetFilter(Type) = '';
        if NOT Showtype then 
          begin
        ShowMaxField := GetFilter(Type) = Format(Type::Machine);
        end;
        FilterGroup(0)

    end;

    var
        [InDataSet]
        Showtype: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;
}