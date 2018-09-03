page 123456706 "CSD Seminar Comment Sheet"
{
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    Caption =  'Seminar Comment Sheet';
DelayedInsert = true;
MultipleNewLines = true;
AutoSplitKey = true;


    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;"Date")
                {
                    
                }
                field(Code;Code)
                {

                }
                field(Comment;Comment)
                {

                }
            }
        }
        
    }

    
}