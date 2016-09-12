#shadowsocks-hijack 
Let shadowsocks be evil - hijack the traffic and showing your unencrypted traffic passing through shadowsocks

## Usage

### Step 1
Build the Docker File
``` sh
docker build -t shadowsocks-hijack .
```

### Step 2
Run the docker
``` sh
docker run -p 1984:1984 shadowsocks-hijack .
```