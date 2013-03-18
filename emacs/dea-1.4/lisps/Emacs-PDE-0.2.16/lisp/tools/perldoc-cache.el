(setq perldoc-obarray (make-vector 1519 nil))
;; Functions
(mapc (lambda (func)
         (set (intern func perldoc-obarray) t))
'(
"-A" "-B" "-C" "-M" "-O" "-R" "-S" "-T" "-W" "-X" "-b" "-c" "-d" "-e" "-f"
"-g" "-k" "-l" "-o" "-p" "-r" "-s" "-t" "-u" "-w" "-x" "-z" "abs" "accept"
"alarm" "atan2" "bind" "binmode" "bless" "caller" "chdir" "chmod" "chomp"
"chop" "chown" "chr" "chroot" "close" "closedir" "connect" "continue" "cos"
"crypt" "dbmclose" "dbmopen" "defined" "delete" "die" "do" "dump" "each"
"endgrent" "endhostent" "endnetent" "endprotoent" "endpwent" "endservent"
"eof" "eval" "exec" "exists" "exit" "exp" "fcntl" "fileno" "flock" "fork"
"format" "formline" "getc" "getgrent" "getgrgid" "getgrnam" "gethostbyaddr"
"gethostbyname" "gethostent" "getlogin" "getnetbyaddr" "getnetbyname"
"getnetent" "getpeername" "getpgrp" "getppid" "getpriority"
"getprotobyname" "getprotobynumber" "getprotoent" "getpwent" "getpwnam"
"getpwuid" "getservbyname" "getservbyport" "getservent" "getsockname"
"getsockopt" "glob" "gmtime" "goto" "grep" "hex" "import" "index" "int"
"ioctl" "join" "keys" "kill" "last" "lc" "lcfirst" "length" "link" "listen"
"local" "localtime" "lock" "log" "lstat" "m" "map" "mkdir" "msgctl"
"msgget" "msgrcv" "msgsnd" "my" "next" "no" "oct" "open" "opendir" "ord"
"our" "pack" "package" "pipe" "pop" "pos" "print" "printf" "prototype"
"push" "q" "qq" "qr" "quotemeta" "qw" "qx" "rand" "read" "readdir"
"readline" "readlink" "readpipe" "recv" "redo" "ref" "rename" "require"
"reset" "return" "reverse" "rewinddir" "rindex" "rmdir" "s" "scalar" "seek"
"seekdir" "select" "semctl" "semget" "semop" "send" "setgrent" "sethostent"
"setnetent" "setpgrp" "setpriority" "setprotoent" "setpwent" "setservent"
"setsockopt" "shift" "shmctl" "shmget" "shmread" "shmwrite" "shutdown"
"sin" "sleep" "socket" "socketpair" "sort" "splice" "split" "sprintf"
"sqrt" "srand" "stat" "study" "sub" "substr" "symlink" "syscall" "sysopen"
"sysread" "sysseek" "system" "syswrite" "tell" "telldir" "tie" "tied"
"time" "times" "tr" "truncate" "uc" "ucfirst" "umask" "undef" "unlink"
"unpack" "unshift" "untie" "use" "utime" "values" "vec" "wait" "waitpid"
"wantarray" "warn" "write" "y"))

;; Modules
(mapc (lambda (mod)
         (intern mod perldoc-obarray))
'(
"5.8.5::Bundle::LWP" "5.8.5::Bundle::Net::LDAP" "5.8.5::Convert::ASN1"
"5.8.5::Convert::ASN1::Debug" "5.8.5::Convert::ASN1::IO"
"5.8.5::Convert::ASN1::_decode" "5.8.5::Convert::ASN1::_encode"
"5.8.5::Convert::ASN1::parser" "5.8.5::Data::Grove"
"5.8.5::Data::Grove::Parent" "5.8.5::Data::Grove::Visitor"
"5.8.5::File::Listing" "5.8.5::HTML::Form" "5.8.5::HTML::Tagset"
"5.8.5::HTTP::Cookies" "5.8.5::HTTP::Cookies::Microsoft"
"5.8.5::HTTP::Cookies::Netscape" "5.8.5::HTTP::Daemon" "5.8.5::HTTP::Date"
"5.8.5::HTTP::Headers" "5.8.5::HTTP::Headers::Auth"
"5.8.5::HTTP::Headers::ETag" "5.8.5::HTTP::Headers::Util"
"5.8.5::HTTP::Message" "5.8.5::HTTP::Negotiate" "5.8.5::HTTP::Request"
"5.8.5::HTTP::Request::Common" "5.8.5::HTTP::Response"
"5.8.5::HTTP::Status" "5.8.5::LWP" "5.8.5::LWP::Authen::Basic"
"5.8.5::LWP::Authen::Digest" "5.8.5::LWP::Authen::Ntlm"
"5.8.5::LWP::ConnCache" "5.8.5::LWP::Debug" "5.8.5::LWP::DebugFile"
"5.8.5::LWP::MediaTypes" "5.8.5::LWP::MemberMixin" "5.8.5::LWP::Protocol"
"5.8.5::LWP::Protocol::GHTTP" "5.8.5::LWP::Protocol::cpan"
"5.8.5::LWP::Protocol::data" "5.8.5::LWP::Protocol::file"
"5.8.5::LWP::Protocol::ftp" "5.8.5::LWP::Protocol::gopher"
"5.8.5::LWP::Protocol::http" "5.8.5::LWP::Protocol::http10"
"5.8.5::LWP::Protocol::https" "5.8.5::LWP::Protocol::https10"
"5.8.5::LWP::Protocol::ldap" "5.8.5::LWP::Protocol::mailto"
"5.8.5::LWP::Protocol::nntp" "5.8.5::LWP::Protocol::nogo"
"5.8.5::LWP::RobotUA" "5.8.5::LWP::Simple" "5.8.5::LWP::UserAgent"
"5.8.5::Net::HTTP" "5.8.5::Net::HTTP::Methods" "5.8.5::Net::HTTP::NB"
"5.8.5::Net::HTTPS" "5.8.5::Net::LDAP" "5.8.5::Net::LDAP::ASN"
"5.8.5::Net::LDAP::Bind" "5.8.5::Net::LDAP::Constant"
"5.8.5::Net::LDAP::Control" "5.8.5::Net::LDAP::Control::Paged"
"5.8.5::Net::LDAP::Control::ProxyAuth" "5.8.5::Net::LDAP::Control::Sort"
"5.8.5::Net::LDAP::Control::SortResult" "5.8.5::Net::LDAP::Control::VLV"
"5.8.5::Net::LDAP::Control::VLVResponse" "5.8.5::Net::LDAP::DSML"
"5.8.5::Net::LDAP::Entry" "5.8.5::Net::LDAP::Examples"
"5.8.5::Net::LDAP::Extension" "5.8.5::Net::LDAP::Extension::SetPassword"
"5.8.5::Net::LDAP::Extra" "5.8.5::Net::LDAP::FAQ"
"5.8.5::Net::LDAP::Filter" "5.8.5::Net::LDAP::LDIF"
"5.8.5::Net::LDAP::Message" "5.8.5::Net::LDAP::RFC"
"5.8.5::Net::LDAP::Reference" "5.8.5::Net::LDAP::RootDSE"
"5.8.5::Net::LDAP::Schema" "5.8.5::Net::LDAP::Search"
"5.8.5::Net::LDAP::Security" "5.8.5::Net::LDAP::Util" "5.8.5::Net::LDAPI"
"5.8.5::Net::LDAPS" "5.8.5::URI" "5.8.5::URI::Escape"
"5.8.5::URI::Heuristic" "5.8.5::URI::QueryParam" "5.8.5::URI::Split"
"5.8.5::URI::URL" "5.8.5::URI::WithBase" "5.8.5::URI::_foreign"
"5.8.5::URI::_generic" "5.8.5::URI::_ldap" "5.8.5::URI::_login"
"5.8.5::URI::_query" "5.8.5::URI::_segment" "5.8.5::URI::_server"
"5.8.5::URI::_userpass" "5.8.5::URI::data" "5.8.5::URI::file"
"5.8.5::URI::file::Base" "5.8.5::URI::file::FAT" "5.8.5::URI::file::Mac"
"5.8.5::URI::file::OS2" "5.8.5::URI::file::QNX" "5.8.5::URI::file::Unix"
"5.8.5::URI::file::Win32" "5.8.5::URI::ftp" "5.8.5::URI::gopher"
"5.8.5::URI::http" "5.8.5::URI::https" "5.8.5::URI::ldap"
"5.8.5::URI::ldapi" "5.8.5::URI::ldaps" "5.8.5::URI::mailto"
"5.8.5::URI::mms" "5.8.5::URI::news" "5.8.5::URI::nntp" "5.8.5::URI::pop"
"5.8.5::URI::rlogin" "5.8.5::URI::rsync" "5.8.5::URI::rtsp"
"5.8.5::URI::rtspu" "5.8.5::URI::sip" "5.8.5::URI::sips"
"5.8.5::URI::snews" "5.8.5::URI::ssh" "5.8.5::URI::telnet"
"5.8.5::URI::tn3270" "5.8.5::URI::urn" "5.8.5::URI::urn::isbn"
"5.8.5::URI::urn::oid" "5.8.5::WWW::RobotRules"
"5.8.5::WWW::RobotRules::AnyDBM_File" "5.8.5::XML::DOM-ecmascript"
"5.8.5::XML::Dumper" "5.8.5::XML::ESISParser" "5.8.5::XML::Encoding"
"5.8.5::XML::Grove" "5.8.5::XML::Grove::AsCanonXML"
"5.8.5::XML::Grove::AsString" "5.8.5::XML::Grove::Builder"
"5.8.5::XML::Grove::Factory" "5.8.5::XML::Grove::IDs"
"5.8.5::XML::Grove::Path" "5.8.5::XML::Grove::PerlSAX"
"5.8.5::XML::Grove::Sub" "5.8.5::XML::Grove::Subst"
"5.8.5::XML::Grove::XPointer" "5.8.5::XML::Handler::CanonXMLWriter"
"5.8.5::XML::Handler::Sample" "5.8.5::XML::Handler::Subs"
"5.8.5::XML::Handler::XMLWriter" "5.8.5::XML::NamespaceSupport"
"5.8.5::XML::Parser::PerlSAX" "5.8.5::XML::PatAct::ActionTempl"
"5.8.5::XML::PatAct::Amsterdam" "5.8.5::XML::PatAct::MatchName"
"5.8.5::XML::PatAct::PatternTempl" "5.8.5::XML::PatAct::ToObjects"
"5.8.5::XML::Perl2SAX" "5.8.5::XML::SAX" "5.8.5::XML::SAX2Perl"
"5.8.5::XML::SAX::Base" "5.8.5::XML::SAX::DocumentLocator"
"5.8.5::XML::SAX::Exception" "5.8.5::XML::SAX::Intro"
"5.8.5::XML::SAX::ParserFactory" "5.8.5::XML::SAX::PurePerl"
"5.8.5::XML::SAX::PurePerl::DTDDecls"
"5.8.5::XML::SAX::PurePerl::DebugHandler"
"5.8.5::XML::SAX::PurePerl::DocType"
"5.8.5::XML::SAX::PurePerl::EncodingDetect"
"5.8.5::XML::SAX::PurePerl::Exception"
"5.8.5::XML::SAX::PurePerl::NoUnicodeExt"
"5.8.5::XML::SAX::PurePerl::Productions"
"5.8.5::XML::SAX::PurePerl::Reader"
"5.8.5::XML::SAX::PurePerl::Reader::NoUnicodeExt"
"5.8.5::XML::SAX::PurePerl::Reader::Stream"
"5.8.5::XML::SAX::PurePerl::Reader::String"
"5.8.5::XML::SAX::PurePerl::Reader::URI"
"5.8.5::XML::SAX::PurePerl::Reader::UnicodeExt"
"5.8.5::XML::SAX::PurePerl::UnicodeExt"
"5.8.5::XML::SAX::PurePerl::XMLDecl" "5.8.5::XML::Twig"
"5.8.5::XML::Twig::XPath" "5.8.5::lwpcook" "5.8.5::lwptut" "AnyDBM_File"
"Archive::Tar" "Archive::Tar::Constant" "Archive::Tar::File"
"Attribute::Handlers" "Attribute::Handlers::demo::Demo"
"Attribute::Handlers::demo::Descriptions"
"Attribute::Handlers::demo::MyClass" "AutoLoader" "AutoSplit" "B"
"B::Asmdata" "B::Assembler" "B::Bblock" "B::Bytecode" "B::C" "B::CC"
"B::Concise" "B::Debug" "B::Deparse" "B::Disassembler" "B::Lint"
"B::Showlex" "B::Stackobj" "B::Stash" "B::Terse" "B::Xref" "Benchmark"
"Bundle::DBD::mysql" "Bundle::DBI" "Bundle::LWP" "Bundle::Net::LDAP"
"ByteLoader" "CGI" "CGI::Apache" "CGI::Carp" "CGI::Cookie" "CGI::Fast"
"CGI::Pretty" "CGI::Push" "CGI::Switch" "CGI::Util" "CONFIG::Hash"
"CONFIG::Plain" "CPAN" "CPAN::FirstTime" "CPAN::Meta::YAML" "CPAN::Nox"
"Carp" "Carp::Heavy" "Class::ISA" "Class::Struct" "Config" "Config::Simple"
"Convert::ASN1" "Convert::ASN1::Debug" "Convert::ASN1::IO"
"Convert::ASN1::_decode" "Convert::ASN1::_encode" "Convert::ASN1::parser"
"Crypt::SSLeay" "Crypt::SSLeay::CTX" "Crypt::SSLeay::Conn"
"Crypt::SSLeay::Err" "Crypt::SSLeay::MainContext" "Crypt::SSLeay::X509"
"Cwd" "DB" "DBD::DBM" "DBD::ExampleP" "DBD::File" "DBD::Gofer"
"DBD::Gofer::Policy::Base" "DBD::Gofer::Policy::classic"
"DBD::Gofer::Policy::pedantic" "DBD::Gofer::Policy::rush"
"DBD::Gofer::Transport::Base" "DBD::Gofer::Transport::null"
"DBD::Gofer::Transport::pipeone" "DBD::Gofer::Transport::stream"
"DBD::NullP" "DBD::Proxy" "DBD::Sponge" "DBD::mysql" "DBD::mysql::GetInfo"
"DBD::mysql::INSTALL" "DBI" "DBI::Changes" "DBI::Const::GetInfo::ANSI"
"DBI::Const::GetInfo::ODBC" "DBI::Const::GetInfoReturn"
"DBI::Const::GetInfoType" "DBI::DBD" "DBI::DBD::Metadata" "DBI::FAQ"
"DBI::Gofer::Execute" "DBI::Gofer::Request" "DBI::Gofer::Response"
"DBI::Gofer::Serializer::Base" "DBI::Gofer::Serializer::DataDumper"
"DBI::Gofer::Serializer::Storable" "DBI::Gofer::Transport::Base"
"DBI::Gofer::Transport::pipeone" "DBI::Gofer::Transport::stream"
"DBI::Profile" "DBI::ProfileData" "DBI::ProfileDumper"
"DBI::ProfileDumper::Apache" "DBI::ProfileSubs" "DBI::ProxyServer"
"DBI::PurePerl" "DBI::Roadmap" "DBI::SQL::Nano" "DBI::Util::CacheMemory"
"DBI::Util::_accessor" "DBI::W32ODBC" "DB_File" "Data::Dumper"
"Data::Grove" "Data::Grove::Parent" "Data::Grove::Visitor" "Devel::DProf"
"Devel::PPPort" "Devel::Peek" "Devel::SelfStubber" "Digest" "Digest::MD5"
"Digest::base" "DirHandle" "Dumpvalue" "DynaLoader" "Encode"
"Encode::Alias" "Encode::Byte" "Encode::CJKConstants" "Encode::CN"
"Encode::CN::HZ" "Encode::Config" "Encode::EBCDIC" "Encode::Encoder"
"Encode::Encoding" "Encode::Guess" "Encode::JP" "Encode::JP::H2Z"
"Encode::JP::JIS7" "Encode::KR" "Encode::KR::2022_KR"
"Encode::MIME::Header" "Encode::PerlIO" "Encode::Supported"
"Encode::Symbol" "Encode::TW" "Encode::Unicode" "Encode::Unicode::UTF7"
"English" "Env" "Errno" "Exporter" "Exporter::Heavy" "ExtUtils::Command"
"ExtUtils::Command::MM" "ExtUtils::Constant" "ExtUtils::Embed"
"ExtUtils::Install" "ExtUtils::Installed" "ExtUtils::Liblist"
"ExtUtils::Liblist::Kid" "ExtUtils::MM" "ExtUtils::MM_Any"
"ExtUtils::MM_BeOS" "ExtUtils::MM_Cygwin" "ExtUtils::MM_DOS"
"ExtUtils::MM_MacOS" "ExtUtils::MM_NW5" "ExtUtils::MM_OS2"
"ExtUtils::MM_UWIN" "ExtUtils::MM_Unix" "ExtUtils::MM_VMS"
"ExtUtils::MM_Win32" "ExtUtils::MM_Win95" "ExtUtils::MY"
"ExtUtils::MakeMaker" "ExtUtils::MakeMaker::FAQ"
"ExtUtils::MakeMaker::Tutorial" "ExtUtils::MakeMaker::bytes"
"ExtUtils::MakeMaker::vmsish" "ExtUtils::Manifest" "ExtUtils::Miniperl"
"ExtUtils::Mkbootstrap" "ExtUtils::Mksymlists" "ExtUtils::Packlist"
"ExtUtils::testlib" "Fatal" "Fcntl" "File::Basename" "File::CheckTree"
"File::Compare" "File::Copy" "File::DosGlob" "File::Find" "File::Glob"
"File::Listing" "File::Path" "File::Spec" "File::Spec::Cygwin"
"File::Spec::Epoc" "File::Spec::Functions" "File::Spec::Mac"
"File::Spec::OS2" "File::Spec::Unix" "File::Spec::VMS" "File::Spec::Win32"
"File::Tail" "File::Temp" "File::stat" "FileCache" "FileHandle"
"Filter::Util::Call" "Filter::Util::Exec" "Filter::cpp" "Filter::decrypt"
"Filter::exec" "Filter::sh" "Filter::tee" "FindBin" "GDBM_File"
"Getopt::Long" "Getopt::Std" "HTML::Entities" "HTML::Filter" "HTML::Form"
"HTML::HeadParser" "HTML::LinkExtor" "HTML::Parser" "HTML::PullParser"
"HTML::Tagset" "HTML::TokeParser" "HTTP::Cookies"
"HTTP::Cookies::Microsoft" "HTTP::Cookies::Netscape" "HTTP::Daemon"
"HTTP::Date" "HTTP::Headers" "HTTP::Headers::Auth" "HTTP::Headers::ETag"
"HTTP::Headers::Util" "HTTP::Message" "HTTP::Negotiate" "HTTP::Request"
"HTTP::Request::Common" "HTTP::Response" "HTTP::Status" "Hash::Util"
"I18N::Collate" "I18N::LangTags" "I18N::LangTags::Detect"
"I18N::LangTags::List" "I18N::Langinfo" "IO" "IO::Dir" "IO::File"
"IO::Handle" "IO::Pipe" "IO::Poll" "IO::Seekable" "IO::Select" "IO::Socket"
"IO::Socket::INET" "IO::Socket::UNIX" "IO::Zlib" "IPC::Msg" "IPC::Open2"
"IPC::Open3" "IPC::Semaphore" "IPC::SysV" "JSON::PP" "JSON::PP::Boolean"
"LWP" "LWP::Authen::Basic" "LWP::Authen::Digest" "LWP::Authen::Ntlm"
"LWP::ConnCache" "LWP::Debug" "LWP::DebugFile" "LWP::MediaTypes"
"LWP::MemberMixin" "LWP::Protocol" "LWP::Protocol::GHTTP"
"LWP::Protocol::cpan" "LWP::Protocol::data" "LWP::Protocol::file"
"LWP::Protocol::ftp" "LWP::Protocol::gopher" "LWP::Protocol::http"
"LWP::Protocol::http10" "LWP::Protocol::https" "LWP::Protocol::https10"
"LWP::Protocol::ldap" "LWP::Protocol::mailto" "LWP::Protocol::nntp"
"LWP::Protocol::nogo" "LWP::RobotUA" "LWP::Simple" "LWP::UserAgent"
"List::Util" "Locale::Constants" "Locale::Country" "Locale::Currency"
"Locale::Language" "Locale::Maketext" "Locale::Maketext::Guts"
"Locale::Maketext::GutsLoader" "Locale::Maketext::TPJ13" "Locale::Script"
"MIME::Base64" "MIME::QuotedPrint" "Math::BigFloat" "Math::BigFloat::Trace"
"Math::BigInt" "Math::BigInt::Calc" "Math::BigInt::CalcEmu"
"Math::BigInt::Trace" "Math::BigRat" "Math::Complex" "Math::Trig" "Memoize"
"Memoize::AnyDBM_File" "Memoize::Expire" "Memoize::ExpireFile"
"Memoize::ExpireTest" "Memoize::SDBM_File" "Memoize::Storable"
"Module::Metadata" "NEXT" "Net::Cmd" "Net::Config" "Net::Domain" "Net::FTP"
"Net::FTP::A" "Net::FTP::E" "Net::FTP::I" "Net::FTP::L"
"Net::FTP::dataconn" "Net::HTTP" "Net::HTTP::Methods" "Net::HTTP::NB"
"Net::HTTPS" "Net::LDAP" "Net::LDAP::ASN" "Net::LDAP::Bind"
"Net::LDAP::Constant" "Net::LDAP::Control" "Net::LDAP::Control::Paged"
"Net::LDAP::Control::ProxyAuth" "Net::LDAP::Control::Sort"
"Net::LDAP::Control::SortResult" "Net::LDAP::Control::VLV"
"Net::LDAP::Control::VLVResponse" "Net::LDAP::DSML" "Net::LDAP::Entry"
"Net::LDAP::Examples" "Net::LDAP::Extension"
"Net::LDAP::Extension::SetPassword" "Net::LDAP::Extra" "Net::LDAP::FAQ"
"Net::LDAP::Filter" "Net::LDAP::LDIF" "Net::LDAP::Message" "Net::LDAP::RFC"
"Net::LDAP::Reference" "Net::LDAP::RootDSE" "Net::LDAP::Schema"
"Net::LDAP::Search" "Net::LDAP::Security" "Net::LDAP::Util" "Net::LDAPI"
"Net::LDAPS" "Net::NNTP" "Net::Netrc" "Net::POP3" "Net::Ping" "Net::SMTP"
"Net::SSL" "Net::Time" "Net::hostent" "Net::libnetFAQ" "Net::netent"
"Net::protoent" "Net::servent" "O" "Opcode" "OpenIPMI" "POSIX"
"Package::Constants" "Parse::CPAN::Meta" "PerlIO" "PerlIO::encoding"
"PerlIO::scalar" "PerlIO::via" "PerlIO::via::QuotedPrint" "Pod::Checker"
"Pod::Find" "Pod::Functions" "Pod::Html" "Pod::InputObjects" "Pod::LaTeX"
"Pod::Man" "Pod::ParseLink" "Pod::ParseUtils" "Pod::Parser" "Pod::Perldoc"
"Pod::Perldoc::BaseTo" "Pod::Perldoc::GetOptsOO" "Pod::Perldoc::ToChecker"
"Pod::Perldoc::ToMan" "Pod::Perldoc::ToNroff" "Pod::Perldoc::ToPod"
"Pod::Perldoc::ToRtf" "Pod::Perldoc::ToText" "Pod::Perldoc::ToTk"
"Pod::Perldoc::ToXml" "Pod::PlainText" "Pod::Plainer" "Pod::Select"
"Pod::Text" "Pod::Text::Color" "Pod::Text::Overstrike" "Pod::Text::Termcap"
"Pod::Usage" "Probe::Perl" "Roadmap" "SDBM_File" "Safe" "Scalar::Util"
"Search::Dict" "SelectSaver" "SelfLoader" "Shell" "Socket" "Storable"
"Switch" "Symbol" "Sys::Hostname" "Sys::Syslog" "TASKS" "Term::ANSIColor"
"Term::Cap" "Term::Complete" "Term::ReadLine" "Term::ReadLine::Perl"
"Term::ReadLine::readline" "Test" "Test::Builder" "Test::Harness"
"Test::Harness::Assert" "Test::Harness::Iterator" "Test::Harness::Straps"
"Test::More" "Test::Simple" "Test::Tutorial" "Test::YAML" "Text::Abbrev"
"Text::Balanced" "Text::Glob" "Text::ParseWords" "Text::Soundex"
"Text::Tabs" "Text::Wrap" "Thread" "Thread::Queue" "Thread::Semaphore"
"Tie::Array" "Tie::File" "Tie::Handle" "Tie::Hash" "Tie::Memoize"
"Tie::RefHash" "Tie::Scalar" "Tie::SubstrHash" "Time::Local" "Time::gmtime"
"Time::localtime" "Time::tm" "UNIVERSAL" "URI" "URI::Escape"
"URI::Heuristic" "URI::QueryParam" "URI::Split" "URI::URL" "URI::WithBase"
"URI::_foreign" "URI::_generic" "URI::_ldap" "URI::_login" "URI::_query"
"URI::_segment" "URI::_server" "URI::_userpass" "URI::data" "URI::file"
"URI::file::Base" "URI::file::FAT" "URI::file::Mac" "URI::file::OS2"
"URI::file::QNX" "URI::file::Unix" "URI::file::Win32" "URI::ftp"
"URI::gopher" "URI::http" "URI::https" "URI::ldap" "URI::ldapi"
"URI::ldaps" "URI::mailto" "URI::mms" "URI::news" "URI::nntp" "URI::pop"
"URI::rlogin" "URI::rsync" "URI::rtsp" "URI::rtspu" "URI::sip" "URI::sips"
"URI::snews" "URI::ssh" "URI::telnet" "URI::tn3270" "URI::urn"
"URI::urn::isbn" "URI::urn::oid" "Unicode::Collate" "Unicode::Normalize"
"Unicode::UCD" "User::grent" "User::pwent" "WWW::RobotRules"
"WWW::RobotRules::AnyDBM_File" "Win32::DBIODBC" "XML::DOM-ecmascript"
"XML::Dumper" "XML::ESISParser" "XML::Encoding" "XML::Grove"
"XML::Grove::AsCanonXML" "XML::Grove::AsString" "XML::Grove::Builder"
"XML::Grove::Factory" "XML::Grove::IDs" "XML::Grove::Path"
"XML::Grove::PerlSAX" "XML::Grove::Sub" "XML::Grove::Subst"
"XML::Grove::XPointer" "XML::Handler::CanonXMLWriter"
"XML::Handler::Sample" "XML::Handler::Subs" "XML::Handler::XMLWriter"
"XML::LibXML" "XML::LibXML::Attr" "XML::LibXML::Boolean"
"XML::LibXML::CDATASection" "XML::LibXML::Comment" "XML::LibXML::Common"
"XML::LibXML::DOM" "XML::LibXML::Document" "XML::LibXML::DocumentFragment"
"XML::LibXML::Dtd" "XML::LibXML::Element" "XML::LibXML::Literal"
"XML::LibXML::Namespace" "XML::LibXML::Node" "XML::LibXML::NodeList"
"XML::LibXML::Number" "XML::LibXML::PI" "XML::LibXML::Parser"
"XML::LibXML::SAX" "XML::LibXML::SAX::Builder"
"XML::LibXML::SAX::Generator" "XML::LibXML::SAX::Parser"
"XML::LibXML::Text" "XML::NamespaceSupport" "XML::Parser"
"XML::Parser::Expat" "XML::Parser::PerlSAX" "XML::Parser::Style::Debug"
"XML::Parser::Style::Objects" "XML::Parser::Style::Stream"
"XML::Parser::Style::Subs" "XML::Parser::Style::Tree"
"XML::PatAct::ActionTempl" "XML::PatAct::Amsterdam"
"XML::PatAct::MatchName" "XML::PatAct::PatternTempl"
"XML::PatAct::ToObjects" "XML::Perl2SAX" "XML::SAX" "XML::SAX2Perl"
"XML::SAX::Base" "XML::SAX::DocumentLocator" "XML::SAX::Exception"
"XML::SAX::Intro" "XML::SAX::ParserFactory" "XML::SAX::PurePerl"
"XML::SAX::PurePerl::DTDDecls" "XML::SAX::PurePerl::DebugHandler"
"XML::SAX::PurePerl::DocType" "XML::SAX::PurePerl::EncodingDetect"
"XML::SAX::PurePerl::Exception" "XML::SAX::PurePerl::NoUnicodeExt"
"XML::SAX::PurePerl::Productions" "XML::SAX::PurePerl::Reader"
"XML::SAX::PurePerl::Reader::NoUnicodeExt"
"XML::SAX::PurePerl::Reader::Stream" "XML::SAX::PurePerl::Reader::String"
"XML::SAX::PurePerl::Reader::URI" "XML::SAX::PurePerl::Reader::UnicodeExt"
"XML::SAX::PurePerl::UnicodeExt" "XML::SAX::PurePerl::XMLDecl" "XML::Twig"
"XML::Twig::XPath" "XS::APItest" "XS::Typemap" "XSLoader" "YAML"
"YAML::Any" "YAML::Dumper" "YAML::Dumper::Base" "YAML::Error"
"YAML::Loader" "YAML::Loader::Base" "YAML::Marshall" "YAML::Mo"
"YAML::Node" "YAML::Tag" "YAML::Types" "a2p" "attributes" "attrs" "autouse"
"base" "bigint" "bignum" "bigrat" "blib" "bytes" "charnames" "constant"
"diagnostics" "encoding" "fields" "filetest" "if" "integer" "less" "lib"
"locale" "lwpcook" "lwptut" "open.pod" "ops" "overload" "perl"
"perl5004delta" "perl5005delta" "perl561delta" "perl56delta" "perl570delta"
"perl571delta" "perl572delta" "perl573delta" "perl581delta" "perl582delta"
"perl583delta" "perl584delta" "perl585delta" "perl58delta" "perlaix"
"perlamiga" "perlapi" "perlapio" "perlapollo" "perlartistic" "perlbeos"
"perlbook" "perlboot" "perlbot" "perlbs2000" "perlcall" "perlce"
"perlcheat" "perlclib" "perlcn" "perlcompile" "perlcygwin" "perldata"
"perldbmfilter" "perldebguts" "perldebtut" "perldebug" "perldelta"
"perldgux" "perldiag" "perldoc" "perldos" "perldsc" "perlebcdic"
"perlembed" "perlepoc" "perlfaq" "perlfaq1" "perlfaq2" "perlfaq3"
"perlfaq4" "perlfaq5" "perlfaq6" "perlfaq7" "perlfaq8" "perlfaq9"
"perlfilter" "perlfork" "perlform" "perlfreebsd" "perlfunc" "perlgpl"
"perlguts" "perlhack" "perlhist" "perlhpux" "perlhurd" "perlintern"
"perlintro" "perliol" "perlipc" "perlirix" "perljp" "perlko" "perllexwarn"
"perllocale" "perllol" "perlmachten" "perlmacos" "perlmacosx" "perlmint"
"perlmod" "perlmodinstall" "perlmodlib" "perlmodstyle" "perlmpeix"
"perlnetware" "perlnewmod" "perlnumber" "perlobj" "perlop" "perlopentut"
"perlos2" "perlos390" "perlos400" "perlothrtut" "perlpacktut" "perlplan9"
"perlpod" "perlpodspec" "perlport" "perlqnx" "perlre" "perlref"
"perlreftut" "perlrequick" "perlreref" "perlretut" "perlrun" "perlsec"
"perlsolaris" "perlstyle" "perlsub" "perlsyn" "perlthrtut" "perltie"
"perltoc" "perltodo" "perltooc" "perltoot" "perltrap" "perltru64" "perltw"
"perlunicode" "perluniintro" "perlutil" "perluts" "perlvar" "perlvmesa"
"perlvms" "perlvos" "perlwin32" "perlxs" "perlxstut" "re" "sigtrap"
"sort.pod" "strict" "subs" "threads" "threads::shared" "utf8" "vars"
"vmsish" "warnings" "warnings::register"))