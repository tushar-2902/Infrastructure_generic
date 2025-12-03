rg_env = {
  rg1={
    rg_name = "tushar-rg"
    location = "Austria East"
  }
}

vn_env = {
  "vn1"={
    nsg_name="tushar-nsg"
    location = "Austria East"
    rg_name ="tushar-rg"
    vn_name="tushar-vn"

    subnets ={
      
      sb1={
        sb_name="tushar-sb1"
        address_prefixes=["10.0.0.0/24"]
      }

      sb2={
        sb_name="tushar-sb2"
        address_prefixes=["10.0.1.0/24"]
      }
    }
  }
}

vm = {

  vm1={
    nic_name="tushar-nic-1"
    location="Austria East"
    rg_name ="tushar-rg"
    vm_name ="tushar-vm-1"
    sb_name="tushar-sb1"
    vn_name="tushar-vn"
    key_name="tushar-vaults-03-4"
    admin_username="adminvm"
    nsg_name="tushar-nsg"
    pip_name="pip-frontend"
  }

    vm2={
    nic_name="tushar-nic-2"
    location="Austria East"
    rg_name ="tushar-rg"
    vm_name ="tushar-vm-2"
    sb_name="tushar-sb2"
    vn_name="tushar-vn"
    key_name="tushar-vaults-03-4"
    admin_username="adminvm"
    nsg_name="tushar-nsg"
    pip_name="pip-backend"    
  }
}

mssql_server = {
 mssql1={
  mssql_server_name="tushar-mssql-server"
  rg_name="tushar-rg"
  location="Austria East"
  administrator_login="tusharadmin"
  administrator_login_password="tushar@2025"
  key_name="tushar-vaults-03-4"
  server_name="adminserver"
 }
}

mssql_database = {
 database1={
  mssql_database_name="tushar-database-1"
  mssql_server_name="tushar-mssql-server"
  rg_name="tushar-rg"
 }
}
key_vault = {
  valut1={
    key_name="tushar-vaults-03-4"
    location="Austria East"
    rg_name="tushar-rg"

 }
}

secret = {
  ser1={
    key_name="tushar-vaults-03-4"
    secret_name="adminserver"
    secret_value="admin@123"
    rg_name="tushar-rg"
  }

   ser2={
    key_name="tushar-vaults-03-4"
    secret_name="adminvm"
    secret_value="admin@123"
    rg_name="tushar-rg"
  }

}

pip = {
 pip1={
  pip_name="pip-load-balancer"
  location="Austria East"
  rg_name="tushar-rg"
 }

  pip2={
  pip_name="pip-frontend"
  location="Austria East"
  rg_name="tushar-rg"
 }

  pip3={
  pip_name="pip-backend"
  location="Austria East"
  rg_name="tushar-rg"
 }
}


lb = {
  lb1={
    lb_name="tushar-lb"
    location="Austria East"
    rg_name="tushar-rg"
    backened_pool_name="tushar-backened-pool"
  }
}

association = {
  ass1={
     nic_name="tushar-nic-1"
    rg_name="tushar-rg"
    backened_pool_name="tushar-backened-pool"
    lb_name="tushar-lb"

  }
}



