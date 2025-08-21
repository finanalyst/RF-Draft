use RakuDoc::PromiseStrings;
%(
        #| renders =numitem block
        numitem => -> %prm, $tmpl {
                my $prefix = %prm<prefix> // '';
                "\n**" ~ $prefix ~ ' ' ~ %prm<numeration> ~ '** ' ~ %prm<contents> ~ "  \n\n"
        },
)