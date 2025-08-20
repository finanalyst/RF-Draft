use RakuDoc::PromiseStrings;
%(
        #| renders =numitem block
        numitem => -> %prm, $tmpl {
                my $prefix = %prm<prefix> // '';
                '**' ~ $prefix ~ ' ' ~ %prm<numeration> ~ '** ' ~ %prm<contents> ~ "  \n\n"
        },
)