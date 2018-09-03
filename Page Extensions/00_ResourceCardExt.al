pageextension 123456700 "CSD ResourceCardExt" extends "Resource Card"
{
    // CSD1.00 PGR/NAVK20180903
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("CSD Resource type"; "CSD Resource Type")
            {
                Style = "StrongAccent";
               }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }
        }

        addlast(Content)
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowRoom;
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {

                 }
            }
        }
    }

    trigger OnAfterGetRecord();
    begin
        ShowRoom := (Type = Type::Machine);
        CurrPage.Update(false);
       End;

    var
        [InDataSet]
        ShowRoom: Boolean;

}