from __future__ import print_function
from mailmerge import MailMerge
from datetime import date
#from .models import Form

template = "Asset Movement Template.docx"

document = MailMerge(template)

document.merge(
    asset_name='asset_name',
    asset_sn='asset_sn',
    place_from='place_from',
    place_to='place_to',
    person_name='person_name',
    person_id='person_id',
    receiver='receiver',
    date='date',
    time='time'
    )

print(document.write('gatepass.pdf'))