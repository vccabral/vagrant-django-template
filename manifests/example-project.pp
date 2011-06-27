
# Server settings.
$host_name = "vagrant-node"
$server_admin_email = "webmaster@theteam.co.uk"
$mysql_root_password = 'f2f23r3cwef'

# Project settings.
$client_name = "megacorp"
$project_name = "facebookwall"
$python_dir_name = "thewall"
$domains = {"production" => "example.com",
            "staging" => "staging.example.com"}
$media_url = "/media/"
$static_url = "/static/"

include djangoapp

djangoapp::instance { "megacorp_project":
    client_name => $client_name,
    project_name => $project_name,
    python_dir_name => $python_dir_name,
    media_url => $media_url,
    static_url => $static_url,
    domains => $domains}
