#!/bin/bash

split()
{
    SUBDIR=$1
    SPLIT=$2
    HEADS=$3

    mkdir -p $SUBDIR;

    pushd $SUBDIR;

    for HEAD in $HEADS
    do

        mkdir -p $HEAD

        pushd $HEAD

        git subsplit init git@github.com:SocialiteProviders/Providers.git
        git subsplit update

        time git subsplit publish --heads="$HEAD" --no-tags "$SPLIT"

        popd

    done

    popd
}

split 23andme               src/23andme:git@github.com:SocialiteProviders/23andme.git                       "master"
split 37Signals             src/37Signals:git@github.com:SocialiteProviders/37Signals.git                   "master"
split 500px                 src/500px:git@github.com:SocialiteProviders/500px.git                           "master"
split Acclaim               src/Acclaim:git@github.com:SocialiteProviders/Acclaim.git                       "master"
split AngelList             src/AngelList:git@github.com:SocialiteProviders/AngelList.git                   "master"
split App.net               src/App.net:git@github.com:SocialiteProviders/App.net.git                       "master"
split Asana                 src/Asana:git@github.com:SocialiteProviders/Asana.git                           "master"
split Battle.net            src/Battle.net:git@github.com:SocialiteProviders/Battle.net.git                 "master"
split Bit.ly                src/Bit.ly:git@github.com:SocialiteProviders/Bit.ly.git                         "master"
split Box                   src/Box:git@github.com:SocialiteProviders/Box.git                               "master"
split Buffer                src/Buffer:git@github.com:SocialiteProviders/Buffer.git                         "master"
split CampaignMonitor       src/CampaignMonitor:git@github.com:SocialiteProviders/CampaignMonitor.git       "master"
split Cheddar               src/Cheddar:git@github.com:SocialiteProviders/Cheddar.git                       "master"
split Coinbase              src/Coinbase:git@github.com:SocialiteProviders/Coinbase.git                     "master"
split ConstantContact       src/ConstantContact:git@github.com:SocialiteProviders/ConstantContact.git       "master"
split Coursera              src/Coursera:git@github.com:SocialiteProviders/Coursera.git                     "master"
split Dailymile             src/Dailymile:git@github.com:SocialiteProviders/Dailymile.git                   "master"
split Dailymotion           src/Dailymotion:git@github.com:SocialiteProviders/Dailymotion.git               "master"
split Dataporten            src/Dataporten:git@github.com:SocialiteProviders/Dataporten.git                 "master"
split Deezer                src/Deezer:git@github.com:SocialiteProviders/Deezer.git                         "master"
split deviantART            src/deviantART:git@github.com:SocialiteProviders/deviantART.git                 "master"
split DigitalOcean          src/DigitalOcean:git@github.com:SocialiteProviders/DigitalOcean.git             "master"
split Discord               src/Discord:git@github.com:SocialiteProviders/Discord.git                       "master"
split Disqus                src/Disqus:git@github.com:SocialiteProviders/Disqus.git                         "master"
split Douban                src/Douban:git@github.com:SocialiteProviders/Douban.git                         "master"
split Dribbble              src/Dribbble:git@github.com:SocialiteProviders/Dribbble.git                     "master"
split Dropbox               src/Dropbox:git@github.com:SocialiteProviders/Dropbox.git                       "master"
split Envato                src/Envato:git@github.com:SocialiteProviders/Envato.git                         "master"
split Etsy                  src/Etsy:git@github.com:SocialiteProviders/Etsy.git                             "master"
split Eventbrite            src/Eventbrite:git@github.com:SocialiteProviders/Eventbrite.git                 "master"
split Everyplay             src/Everyplay:git@github.com:SocialiteProviders/Everyplay.git                   "master"
split EyeEm                 src/EyeEm:git@github.com:SocialiteProviders/EyeEm.git                           "master"
split Fitbit                src/Fitbit:git@github.com:SocialiteProviders/Fitbit.git                         "master"
split Flattr                src/Flattr:git@github.com:SocialiteProviders/Flattr.git                         "master"
split Flickr                src/Flickr:git@github.com:SocialiteProviders/Flickr.git                         "master"
split Foursquare            src/Foursquare:git@github.com:SocialiteProviders/Foursquare.git                 "master"
split GitLab                src/GitLab:git@github.com:SocialiteProviders/GitLab.git                         "master"
split Goodreads             src/Goodreads:git@github.com:SocialiteProviders/Goodreads.git                   "master"
split Google-Plus           src/Google-Plus:git@github.com:SocialiteProviders/Google-Plus.git               "master"
split Heroku                src/Heroku:git@github.com:SocialiteProviders/Heroku.git                         "master"
split Hitbox                src/Hitbox:git@github.com:SocialiteProviders/Hitbox.git                         "master"
split Human-API             src/Human-API:git@github.com:SocialiteProviders/Human-API.git                   "master"
split Imgur                 src/Imgur:git@github.com:SocialiteProviders/Imgur.git                           "master"
split Instagram             src/Instagram:git@github.com:SocialiteProviders/Instagram.git                   "master"
split Jawbone               src/Jawbone:git@github.com:SocialiteProviders/Jawbone.git                       "master"
split Jira                  src/Jira:git@github.com:SocialiteProviders/Jira.git                             "master"
split Kakao                 src/Kakao:git@github.com:SocialiteProviders/Kakao.git                           "master"
split Line                  src/Line:git@github.com:SocialiteProviders/Line.git                             "master"
split LinkedIn              src/LinkedIn:git@github.com:SocialiteProviders/LinkedIn.git                     "master"
split MailChimp             src/MailChimp:git@github.com:SocialiteProviders/MailChimp.git                   "master"
split Medium                src/Medium:git@github.com:SocialiteProviders/Medium.git                         "master"
split Meetup                src/Meetup:git@github.com:SocialiteProviders/Meetup.git                         "master"
split Microsoft-Azure       src/Microsoft-Azure:git@github.com:SocialiteProviders/Microsoft-Azure.git       "master"
split Microsoft-Graph       src/Microsoft-Graph:git@github.com:SocialiteProviders/Microsoft-Graph.git       "master"
split Microsoft-Live        src/Microsoft-Live:git@github.com:SocialiteProviders/Microsoft-Live.git         "master"
split Mixcloud              src/Mixcloud:git@github.com:SocialiteProviders/Mixcloud.git                     "master"
split Moves                 src/Moves:git@github.com:SocialiteProviders/Moves.git                           "master"
split Naver                 src/Naver:git@github.com:SocialiteProviders/Naver.git                           "master"
split Patreon               src/Patreon:git@github.com:SocialiteProviders/Patreon.git                       "master"
split Paymill               src/Paymill:git@github.com:SocialiteProviders/Paymill.git                       "master"
split PayPal                src/PayPal:git@github.com:SocialiteProviders/PayPal.git                         "master"
split PayPal-Sandbox        src/PayPal-Sandbox:git@github.com:SocialiteProviders/PayPal-Sandbox.git         "master"
split Pinterest             src/Pinterest:git@github.com:SocialiteProviders/Pinterest.git                   "master"
split Podio                 src/Podio:git@github.com:SocialiteProviders/Podio.git                           "master"
split Pushbullet            src/Pushbullet:git@github.com:SocialiteProviders/Pushbullet.git                 "master"
split QQ                    src/QQ:git@github.com:SocialiteProviders/QQ.git                                 "master"
split Rdio                  src/Rdio:git@github.com:SocialiteProviders/Rdio.git                             "master"
split Readability           src/Readability:git@github.com:SocialiteProviders/Readability.git               "master"
split Redbooth              src/Redbooth:git@github.com:SocialiteProviders/Redbooth.git                     "master"
split Reddit                src/Reddit:git@github.com:SocialiteProviders/Reddit.git                         "master"
split RunKeeper             src/RunKeeper:git@github.com:SocialiteProviders/RunKeeper.git                   "master"
split SalesForce            src/SalesForce:git@github.com:SocialiteProviders/SalesForce.git                 "master"
split SharePoint            src/SharePoint:git@github.com:SocialiteProviders/SharePoint.git                 "master"
split Shopify               src/Shopify:git@github.com:SocialiteProviders/Shopify.git                       "master"
split Slack                 src/Slack:git@github.com:SocialiteProviders/Slack.git                           "master"
split SoundCloud            src/SoundCloud:git@github.com:SocialiteProviders/SoundCloud.git                 "master"
split Spotify               src/Spotify:git@github.com:SocialiteProviders/Spotify.git                       "master"
split StackExchange         src/StackExchange:git@github.com:SocialiteProviders/StackExchange.git           "master"
split Steam                 src/Steam:git@github.com:SocialiteProviders/Steam.git                           "master"
split StockTwits            src/StockTwits:git@github.com:SocialiteProviders/StockTwits.git                 "master"
split Strava                src/Strava:git@github.com:SocialiteProviders/Strava.git                         "master"
split Stripe                src/Stripe:git@github.com:SocialiteProviders/Stripe.git                         "master"
split Trakt                 src/Trakt:git@github.com:SocialiteProviders/Trakt.git                           "master"
split Trello                src/Trello:git@github.com:SocialiteProviders/Trello.git                         "master"
split Tumblr                src/Tumblr:git@github.com:SocialiteProviders/Tumblr.git                         "master"
split Twitch                src/Twitch:git@github.com:SocialiteProviders/Twitch.git                         "master"
split Twitter               src/Twitter:git@github.com:SocialiteProviders/Twitter.git                       "master"
split Uber                  src/Uber:git@github.com:SocialiteProviders/Uber.git                             "master"
split Venmo                 src/Venmo:git@github.com:SocialiteProviders/Venmo.git                           "master"
split VersionOne            src/VersionOne:git@github.com:SocialiteProviders/VersionOne.git                 "master"
split Vimeo                 src/Vimeo:git@github.com:SocialiteProviders/Vimeo.git                           "master"
split VKontakte             src/VKontakte:git@github.com:SocialiteProviders/VKontakte.git                   "master"
split Weibo                 src/Weibo:git@github.com:SocialiteProviders/Weibo.git                           "master"
split Weixin                src/Weixin:git@github.com:SocialiteProviders/Weixin.git                         "master"
split Weixin-Web            src/Weixin-Web:git@github.com:SocialiteProviders/Weixin-Web.git                 "master"
split WordPress             src/WordPress:git@github.com:SocialiteProviders/WordPress.git                   "master"
split Xing                  src/Xing:git@github.com:SocialiteProviders/Xing.git                             "master"
split xREL                  src/xREL:git@github.com:SocialiteProviders/xREL.git                             "master"
split Yahoo                 src/Yahoo:git@github.com:SocialiteProviders/Yahoo.git                           "master"
split Yammer                src/Yammer:git@github.com:SocialiteProviders/Yammer.git                         "master"
split Yandex                src/Yandex:git@github.com:SocialiteProviders/Yandex.git                         "master"
split YouTube               src/YouTube:git@github.com:SocialiteProviders/YouTube.git                       "master"
split Zendesk               src/Zendesk:git@github.com:SocialiteProviders/Zendesk.git                       "master"
