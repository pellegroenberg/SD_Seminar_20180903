pageextension 123456797 "Order Processor RC ext" extends "Order Processor Role Center"
{
    layout
    {
        // Add changes to page layout here
        //addlast(HomeItems)
    }

    actions
    {
        // Add changes to page actions here
        addlast(Embedding)
        {
            action(Seminar)
            {
                RunObject = page 123456702;
                Caption = 'Seminar list';
            }
        }
        addlast(Navigation)
        {
            action(SeminarSetup)
            {
                RunObject = page "CSD Seminar Setup";
                Caption = 'Seminar setup';
                Image = CashFlowSetup;

            }
        }
    
    }
    
    var
        myInt : Integer;
}