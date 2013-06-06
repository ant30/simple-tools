#!/usr/bin/python

import smtplib
import sys

if len(sys.argv) == 4:
    server = sys.argv[1]
    sender = sys.argv[2]
    target = sys.argv[3]
else:
    print "Usage: %s server senderemail targetemail" % sys.argv[0]
    sys.exit(0)


print "Sending message to %s" % target

receivers = [target]

message = u"""From: Prueba de correo <%(sender)s>
To: To Person <%(target)s>
Subject: SMTP Testing mail

This is a test e-mail message.
""" % dict(sender=sender, target=target)

try:
    smtpObj = smtplib.SMTP(server)
    smtpObj.sendmail(sender, receivers, message)
    print "Successfully sent email"
except smtplib.SMTPException:
    print "Error: unable to send email"
