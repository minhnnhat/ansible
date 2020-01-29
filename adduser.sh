if [ -d "/home/minhnn" ]
then
        echo "minhnn exists"
else
        useradd minhnn
        mkdir /home/minhnn/.ssh
        chown -R minhnn: /home/minhnn/.ssh
        cd /home/minhnn/.ssh
        touch authorized_keys
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC5sw7HQNI8+Q/wLzrOiUt8gmOM2BGrjYLb83cPa+1kP+XVDX9nr7XQIUMVYeLoO4N7L1wchNXke1KygR115i8WkNUvJSiqoPO9zrJaXBVYkQ9NV+XsmGAR59feTUkFH1Ug5TZeVmKzCgivzpM+eQ+qjXlgM3hrYMxK3HccAyx8KgyjiNrLT2g0m8eEXRDYxFy0fK9asi4wN8VNOZcfxP+VABTR66ZEb65ipPgyT1AcXDSBknh01L7X9qslPAUcGnzisnefzVsJ61FewxbLlURQLDtxGLJPEPR1SfXzf/WglgXLpA6do5PJIUe6nmyyjPa27nkKo26kLTko004aWsHYGxl553qdwjuMdGdjoKs5E/Dkm+3YPPzF4Mjt4aCPeZ2hoXy6NU0AKNqFhIUJ+LYgifAcTxjJm59w4w0Kff3TAQ0j/S0VgQOePM5loMAolUlqDcxECI6J7UdJzZoACy1kM1zxJAn5hFnMxg9TNb2XdFLdLqVZQpUntksFj7sQDEjvezHYpOh+2FVw9ZH8tlSLUEgrfWAZXl/SfmOR5leyF0pxiVntYpYiFWerwcHa5J0MByacDq1sjM8OJglqQ1QMJzW8jdEx5LcdX40FN5VCnqx6RtAoP6gJM1o30aL9RmCp2h0b3JM6t5zYbDTxxcXj78bFJT7Df5r0/P1eBl0LKw== nhatminh@NhatMinh" > authorized_keys
        chown -R minhnn: /home/minhnn/.ssh/authorized_keys
        chmod 700 /home/minhnn/.ssh
        chmod 600 /home/minhnn/.ssh/authorized_keys
        echo "minhnn        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
        echo "done minhnn"
fi