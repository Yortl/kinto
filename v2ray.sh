#!/bin/sh

# config v2ray
cat << EOF > /etc/config.json
{
  "inbounds":[
    {
      "port": 2333,
      "protocol": "$PROTOCOL",
      "settings": {
        "decryption": "none",
        "clients": [
          {
            "id": "$UUID"
          }
        ]
      },
      "streamSettings": {
        "network": "tcp"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}		
EOF

# run v2ray
/usr/bin/v2ray -config /etc/config.json
