use RakuDoc::PromiseStrings;
%(
        #| renders =numitem block
        numitem => -> %prm, $tmpl {
                my $prefix = %prm<prefix> // '';
                "\n**" ~ $prefix ~ ' ' ~ %prm<numeration> ~ '** ' ~ %prm<contents> ~ "  \n\n"
        },
        #| renders =para block
        para => -> %prm, $tmpl {
            if %prm<is-in-head> {
                PStr.new: %prm<contents>
            }
            else {
                PStr.new:
                        (%prm<target> ?? '<span class="para" id="' ~ %prm<target> ~ '"></span>' !! '') ~
                                %prm<contents> ~ ("\n\n" unless %prm<inline>)
            }
        },
)