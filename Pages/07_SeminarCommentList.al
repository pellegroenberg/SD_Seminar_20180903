page 123456707 "CSD Seminar Comment List"
{
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    Caption =  'Seminar Comment list';
    Editable = false;

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