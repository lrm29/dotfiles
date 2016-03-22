function connectWork --description 'VPN to MathWorks'
    . $HOME/SecureDirectory/usernames.fish
    . $HOME/SecureDirectory/passwords.fish

    echo $WORK_PASSWORD | sudo openconnect \
        -c $HOME/SecureDirectory/personalCertificate.pfx \
        --key-password=$KEY_PASSWORD \
        --no-dtls \
        --user=$WORK_USERNAME \
        --passwd-on-stdin \
        --no-cert-check \
        --authgroup=Certificate \
        zakim.mathworks.com
end
