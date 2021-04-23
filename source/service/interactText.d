module service.interactText;

import std.array;
import std.stdio;
import std.array;

struct InteractText
{
public:
    string subject;
    string bodyText;
    string[] emails;
    bool writeText()
    {
        write("Subject: ");
        readf("%s\n", &subject);
     
        write("Body text: ");
        readf("%s\n", &bodyText);

        string tempEmails;
        write("Recipients (use comma to split email address, ex: email@email, email2@email2): ");
        readf("%s\n", &tempEmails);
        emails = split(tempEmails.replace(" ", ""), ',');
        
        return true;
    
    }
}
