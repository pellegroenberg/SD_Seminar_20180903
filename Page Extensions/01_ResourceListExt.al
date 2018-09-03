pageextension 123456701 "CSD Resource List Ext" extends "Resource List"
{
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }
        // Add changes to page layout here
        addlast(Content)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage();
    begin
        FilterGroup(3);
        ShowType := GetFilter(Type) = '';
        ShowMaxField := GetFilter(Type) = Format(Type::Machine);
        FilterGroup(0)
    end;

    var
        [InDataSet]
        Showtype: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;
}