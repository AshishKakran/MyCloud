;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns1.mycloud.com. admin.mycloud.com. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
; name servers - NS records

	IN 	NS 	ns1.mycloud.com.
	IN 	NS	ns2.mycloud.com.
; name servers - A records

ns1.mycloud.com. 	IN 	A	10.0.3.235
ns2.mycloud.com.	IN	A 	10.0.3.180 

; 10.0.3.0/24 - A records

db.mycloud.com.		IN	A	10.0.3.226
files.mycloud.com.	IN	A	10.0.3.15
mail.mycloud.com.	IN	A	10.0.3.162
log.mycloud.com.	IN	A	10.0.3.183
www.mycloud.com.	IN	A	10.0.3.114




