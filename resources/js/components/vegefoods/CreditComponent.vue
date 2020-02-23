<template>
	<div class="col-sm-6 col-md-12 col-lg-6">
	    <a href="#" @click="dialog = true" class="btn btn-md btn-block btn-primary mb-3" id="btn-credit" data-toggle="modal" data-target="#creditMobilModal">Simulasi Kredit</a>
        <v-dialog
          v-model="dialog"
          width="500"
          transition="dialog-transition"
        >
          <v-card>
            <v-card-text>
                <v-form>
                    <v-text-field v-model="product_model.name" disabled></v-text-field>
                    <v-text-field v-model="order.shipping_address" label="Alamat pengiriman"></v-text-field>
                    <v-text-field v-model="order.contact_number" label="Kontak"></v-text-field>
                    <v-select v-model="product" return-object label="Tipe Mobil" :items="product_model.products" item-text="name" item-value="id"></v-select>
                    <v-select v-model="color" return-object label="Pilih Warna" :items="product_model.model_colors" item-text="name" item-value="id"></v-select>
                    <v-img v-if="color != null" :src="`/storage/${product_model.model_colors.find(item=>item.id == color.id).image}`"></v-img>
                    <v-select :items="months" v-model="order.month" label="Jumlah Cicilan (Jangka Waktu/ Bulan) dengan Bunga per tahun 25"></v-select>
                    <v-text-field label="Uang Muka" v-model="order.dp"></v-text-field>
                    <div class="body-1 font-weight-bold">Harga Pokok: {{order.main_price}}</div>
                    <div class="body-1 font-weight-bold">Total Bunga: {{order.main_credit}}</div>
                    <div class="body-1 font-weight-bold">Harga Total Kredit: {{order.total_amount}}</div>
                    <div class="body-1 font-weight-bold">Cicilan per Bulan: {{order.credit_per_month}}</div>
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

  name: 'CreditComponent',
    props:{
      product_model:null
  },
  data() {
    return {
        months:[12,24,48,60],
    	dialog:false,
        order:{
            dp:0,
        },
        product:{},
        color:null,
        loading: false,
    };
  },
  watch:{
      product: function(val){
          this.order.dp = this.product.price * 20/100
          this.order.main_price = (this.product.price - this.order.dp)
      },
      'order.month': function(){
          this.order.main_credit = (this.order.main_price * 25 / 100) * this.order.month / 12
          this.order.total_amount = this.order.main_price + this.order.main_credit
          this.order.credit_per_month = this.order.total_amount / this.order.month
      }
  },
  mounted(){

  },
  methods:{
      storeOrder(){
          return new Promise((resolve,reject)=>{
              let access = {
                  order:this.order,
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
