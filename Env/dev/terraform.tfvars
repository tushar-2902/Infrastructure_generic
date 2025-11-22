rg_env = {
  rg1={
    rg_name = "tushar-rg"
    location = "west europe"
  }
}

vn_env = {
  "vn1"={
    nsg_name="tushar-nsg"
    location = "westeurope"
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
    location="westeurope"
    rg_name ="tushar-rg"
    vm_name ="tushar-vm-1"
    sb_name="tushar-sb1"
    vn_name="tushar-vn"
     key_name="tushar-vault"
    secret_name="adminvm"
    secret_password="adminpassword"
  }

    vm2={
    nic_name="tushar-nic-2"
    location="westeurope"
    rg_name ="tushar-rg"
    vm_name ="tushar-vm-1"
    sb_name="tushar-sb2"
    vn_name="tushar-vn"
     key_name="tushar-vault"
     secret_name="adminvm"
    secret_password="adminpassword"
  }
}

mssql_server = {
 mssql1={
  mssql_server_name="tushar-mssql-server"
  rg_name="tushar-rg"
  location="west Europe"
  administrator_login="tusharadmin"
  administrator_login_password="tushar@2025"
  key_name="tushar-vault"
  secret_name="adminname"
  secret_password="adminpassword"
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
    key_name="tushar-vault"
    location="west europe"
    rg_name="tushar-rg"

 }
}

secret = {
  ser1={
    secret_name="adminname"
    secret_value="adminserver"
    rg_name="tushar-rg"
  }

   ser2={
    secret_name="adminpassword"
    secret_value="admin@123"
    rg_name="tushar-rg"
  }
  
   ser3={
    secret_name="adminvm"
    secret_value="adminuser"
    rg_name="tushar-rg"
  }

   ser4={
    secret_name="adminpassword"
    secret_value="admin@321"
    rg_name="tushar-rg"
  }


}

pip = {
 pip1={
  pip_name="pip-load-balancer"
  location="west europe"
  rg_name="tushar-rg"
 }
}


lb = {
  lb1={
    lb_name="tushar-lb"
    location="west europe"
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



