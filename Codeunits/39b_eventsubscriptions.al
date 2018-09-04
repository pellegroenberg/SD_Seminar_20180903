codeunit 123456798 "CSDEventSubscription"
{
    [EventSubscriber(ObjectType::Codeunit,212, 'OnBeforeResLedgEntryInsert', '', true,true)]
 local procedure PostResJnlLineOnBeforeResLedgEntryInsert(var ResLedgerEntry : Record "Res. Ledger Entry";ResJournalLine : Record "Res. Journal Line");
 var
     c : Codeunit 212;
  begin   
      ResLedgerEntry."CSD Seminar No.":=ResJournalLine."CSD Seminar No.";
      ResLedgerEntry."CSD Seminar Registration No.":=ResJournalLine."CSD Seminar Registration No."; 
  end;


    }