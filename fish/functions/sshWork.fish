function sshWork --description 'SSH to MathWorks'
    . $HOME/SecureDirectory/usernames.fish

    ssh -C $WORK_USERNAME@$WORK_HOSTNAME
end
