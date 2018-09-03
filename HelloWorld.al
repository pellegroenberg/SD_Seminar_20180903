// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 12346798 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message('App published: Hello world');
    end;


    trigger OnClosePage();
    begin
        Message('close page bauwau')
    end;
}

pageextension 123456797 CustomercardExt extends "Customer Card"
{
    trigger OnOpenPage();
    
    begin
         Message('Message card')
    end;
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt : Integer;
}