table 123456701 "CSD Seminar"
{
    Caption = 'Seminar';
    
    fields
    {
        field(10;"No.";Code[20])
        {
            Caption = 'No.';
           trigger OnValidate();
           begin
               if "No." <> xrec."No." then begin
                   SeminarSetup.get;
                   NoSerieMgt.TestManual(SeminarSetup."Seminar Nos.");
                   "No. Series" := '';
               end;
           end;
        }
        field(20;Name;Text[50])
        {
            Caption = 'Name';
            trigger OnValidate();
            begin
                if ("Search Name" = UpperCase(xRec.Name)) or
                ("Search Name" = '') then
                 "Search Name" := Name;

            end;
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

            FieldClass = FlowField;
            CalcFormula = exist("CSD Seminar Comment Line" where("Table Name" = const("Seminar"),"No."=field("No.")));

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
            trigger OnValidate();
            begin
                 if (xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group") then begin
                     If GenProdPostinGroup.ValidateVatProdPostingGroup(GenProdPostinGroup,"Gen. Prod. Posting Group") then
                      validate("Vat Prod. Posting Group",GenProdPostinGroup."Def. VAT Prod. Posting Group");
                 end;
            end;
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
        Commentline : Record "CSD Seminar Comment Line";
        Seminar : Record "CSD Seminar";
        GenProdPostinGroup: Record "Gen. Product Posting Group";
        NoSerieMgt : Codeunit NoSeriesManagement;

    trigger OnInsert();
    begin
        if "No." = '' THEN begin
            SeminarSetup.get;
            SeminarSetup.TestField("Seminar Nos.");
            NoSerieMgt.InitSeries(SeminarSetup."Seminar Nos.",xRec."No. Series",0D,"No.","No. Series");
        end;
    end;

    trigger OnModify();
    begin
         "Last Datetime Modified" := CurrentDateTime;
    end;

    trigger OnDelete();
    begin
           CommentLine.Reset;
           Commentline.SetRange("Table Name",Commentline."Table Name"::Seminar);
           Commentline.SetRange("No.","No.");
           Commentline.DeleteAll;
    end;

    trigger OnRename();
    begin
    end;
procedure AssistEdit() : Boolean ; 

begin
  With Seminar do begin
         Seminar := Rec;
         SeminarSetup.get;
         SeminarSetup.Testfield("Seminar Nos.");
         If NoSerieMgt.SelectSeries(SeminarSetup."Seminar Nos.",xrec."No. Series","No. Series") THEn begin
             NoSerieMgt.SetSeries("No.");
             exit(true);
         end;
      End;    
end;
}