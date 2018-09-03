table 123456701 "CSD Seminar"
{
    Caption = 'Seminar';
    
    fields
    {
        field(10;"No.";Code[20])
        {
            Caption = 'No.';
           
        }
        field(20;Name;Text[50])
        {
            Caption = 'Name';
        }
        field(30;"Seminar Duration";Decimal)
        {
            Caption = 'Seminar Duration';
            DecimalPlaces = 0:1;
        }
        field(40;"Minimum Participants";Integer)
        {
            Caption = 'Minimum Participants';
            
        }
        field(50;"Maximum Participants";Integer)
        {
            Caption = 'Maximum Participants';
            
        }
        field(60;"Search Name";Code[50])
        {
            Caption = 'Search Name';
           
        }
        field(70;Blocked;Boolean)
        {
            Caption = 'Blocked';
           
        }
        field(80;"Last Datetime Modified";Datetime) 
        {
            Caption = 'Last Modified';
           Editable = false;

        }
        field(90;Comment;Boolean)
        {
            Caption = 'Comment';
            Editable = false;

            //FieldClass = FlowField;
           // CalcFormula = exist("")

        }
        field(100;"Seminar Price";Decimal)
        {
            Caption = 'Seminar Price';
            AutoFormatType=1;
            
        }
        field(110;"Gen. Prod. Posting Group";Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
            
        }
        field(120;"Vat Prod. Posting Group";Code[10])
        {
            Caption = 'Vat Prod. Posting group';
            TableRelation = "VAT Product Posting Group";
            
        }
        field(130;"No. Series";Code[10])
        {
            Caption = 'No. series';
            Editable =false;
            TableRelation = "No. Series";
            
        }
    }

    keys
    {
        key(PK;"No.")
        {
            Clustered = true;
        }
        Key(Key1;"Search Name")
        {

        }
    }
    
    var
        SeminarSetup : Record "CSD Seminar Setup";
        // Commentline :
        Seminar : Record "CSD Seminar";
        GenProdPostinGroup: Record "Gen. Product Posting Group";
        NoSerieMgt : Codeunit NoSeriesManagement;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}