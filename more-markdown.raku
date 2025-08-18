use RakuDoc::PromiseStrings;
%(
        #| renders =numitem block
        numitem => -> %prm, $tmpl {
                '**' ~ %prm<prefix> ~ ' ' ~ %prm<numeration> ~ '** ' ~ %prm<contents> ~ "  \n\n"
        },
)