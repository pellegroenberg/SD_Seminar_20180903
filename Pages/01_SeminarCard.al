page 123456701 "CSD Seminar Card"
{
    PageType = Card;
    SourceTable = "CSD Seminar";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    AssistEdit = true;
                    trigger OnAssistEdit();
                    begin
                        if AssistEdit then
                            CurrPage.Update;
                    end;
                }
                field(Name; Name)
                {

                }
                field("Search"; "Search Name")
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("Minimum Participants"; "Minimum Participants")
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }
                field(Blocked; Blocked)
                {

                }
                field("Last DateTime Modified"; "Last Datetime Modified")
                {

                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {

                }
                field("Vat Prod. Posting Group"; "Vat Prod. Posting Group")
                {

                }
                field("Seminar Price"; "Seminar Price")
                {

                }
            }

        }
        area(FactBoxes)
        {
            Systempart("Links"; Links)
            { }
            systempart("Notes"; Notes)
            {

            }
        }

    }



    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    RunObject = page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name" = const (Seminar), "No." = field ("No.");
                    image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
            }
        }
    }

    var
        myInt: Integer;
}