# ULCF

## Forms for UL

(Current)
Covid-19 Photos form

(Coming)
Online Consent Form - for faculty photos

### Installation notes:

Editing Credentials: EDITOR="atom --wait" bin/rails credentials:edit --environment production

Had to downgrade mysql2 gem to version 0.5.2 as 0.5.3 would not install on RHEL6.

Had to install yarn using from tar file.

Production:
RAILS_ENV=production rake assets:precompile
make
