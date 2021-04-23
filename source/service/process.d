module source.service.process;

import service.mail;
import service.interactText;
import service.emailCredentials;

import std.stdio;
struct Process
{
public:

    void init()
    {

        auto c = EmailCredentials();
        
        InteractText inctText = InteractText();
        
        inctText.writeText();

        EmailService emailService = EmailService();

        emailService.to = inctText.emails;
        writeln(emailService.to);

        emailService.subject = inctText.subject;
        emailService.textBody = inctText.bodyText;

        emailService.from = c.from;
        emailService.Host = c.host;
        emailService.login = c.login;
        emailService.password = c.password;

        emailService.run();
    }
}
