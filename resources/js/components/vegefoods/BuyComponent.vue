<template>
	<div class="col-sm-6 col-md-12 col-lg-6">
        <a href="#" @click="dialog = true" class="btn btn-md btn-block btn-primary mb-3" id="btn-beli" data-toggle="modal" data-target="#beliMobilModal">Beli Mobil</a>
        <v-dialog
          v-model="dialog"
          width="500"
          transition="dialog-transition"
        >
          <v-card>
            <v-card-text>
                <v-form>
                    <v-text-field v-model="product_model.name" disabled></v-text-field>
                    <v-select v-model="product" return-object label="Tipe Mobil" :items="product_model.products" item-text="name" item-value="id"></v-select>
                    <v-select v-model="color" return-object label="Pilih Warna" :items="product_model.model_colors" item-text="name" item-value="id"></v-select>
                    <v-btn block text @click="storeOrder()" :loading="loading" :disabled="loading">Submit</v-btn>
                </v-form>
            </v-card-text>
          </v-card>
        </v-dialog>
    </div>
</template>

<script>
import Swal from 'sweetalert2'
export default {

  name: 'BuyComponent',
  props:{
      product_model:null
  },
  data() {
    return {
    	dialog:false,
        order:null,
        product:null,
        color:null,
        loading: false,
    };
  },
  mounted(){
      console.log(this.product_model)
  },
  methods:{
      storeOrder(){
          return new Promise((resolve,reject)=>{
              let access = {
                  product:this.product,
                  color:this.color
              }
              this.loading = true
              axios.post('/api/v1/order',access).then(res=>{
                this.loading = false
                this.dialog = false
                Swal.fire({
                    title: 'Sukses!',
                    text: 'Pembelian Berhasil',
                    icon:'success'
                })
              }).catch(err=>{
                  this.loading = false
              })
          })
      }
  }
};
</script>

<style lang="css" scoped>
</style>
