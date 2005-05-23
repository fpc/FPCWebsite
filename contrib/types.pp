Unit types;
{
 Define types for the contrib program.
}

Interface

Type TEntry = record
       name,
       author   : string[128];
       email,
       ftpfile,
       HomePage : string[80];
       os,
       pwd,
       version  : String[30];
       date     : String[8];
       category : string[15]
       Desc     : pchar;
       end;
     PEntry = ^TEntry;  

   TEntryCallBack = Procedure (Const Entry : TEntry);
   
Const 
    EmptyEntry : TEntry = (name : '';
                             author:'';
                             email:'';
                             ftpfile:'';
                             HomePage:'';
                             os:'';
                             pwd:'';
                             version:'';
                             date:'';
                             category:'';
                             desc:'');
    NrCategories = 5;
    CategoryNames : array [1..NrCategories] of string[15] = 
                     ('Database','File Handling','Graphics','Internet','Miscellaneous');
                      
implementation

end.