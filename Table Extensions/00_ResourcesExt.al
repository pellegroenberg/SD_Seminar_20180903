tableextension 123456700 "CSD Resource Extension" extends Resource 
// DOKUMENTATION 
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        field(123456701;"CSD Resource Type";Option)
        {
            OptionMembers = "Internal","External";
            Caption = 'Resource type';
            OptionCaption = 'Internal,External';

        }
        field(123456702;"CSD Maximum Participants";Integer)
        {
           Caption = 'Maximum Participants';
           
        }
        field(123456703;"CSD Quantity Per Day";Decimal)
        {
           Caption = 'Quantity Per Day';
        }

    }
    
    
}