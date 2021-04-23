module service.mail;

import arsd.email;

struct EmailService{
    
public:
    string[] to;
    string from;
    string subject;
    string textBody;
    string Host;
    string login;
    string password;

    bool run(){

        auto message = new EmailMessage();
        message.to = to;
        message.from = from;
        message.subject = subject;
        message.setTextBody(textBody);
        message.send(RelayInfo(Host, login, password));

        return true;
    }
}