package dancing::docker::app;
use Dancer2;
use Dancer2::Plugin::Database;
use Dancer2::Plugin::Redis;

our $VERSION = '0.1';

get '/' => sub {
    return "hello";
};

get '/books' => sub {
    # not incr because the Redis plugin, frankly, sucks
    my $visit = redis_get('visits');
    redis_set('visits', $visit + 1);
    my $sth = database->prepare('SELECT * FROM book');
    $sth->execute;
    my $data = $sth->fetchall_arrayref({});
    return to_json({ visit => $visit + 1,
                     books => $data });
};

true;
