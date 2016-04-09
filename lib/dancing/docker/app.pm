package dancing::docker::app;
use Dancer2;
use Dancer2::Plugin::Database;

our $VERSION = '0.1';

get '/' => sub {
    return "hello";
};

get '/books' => sub {
    my $sth = database->prepare('SELECT * FROM book');
    $sth->execute;
    my $data = $sth->fetchall_arrayref({});
    return to_json($data);
};

true;
