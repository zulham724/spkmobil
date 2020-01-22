<template>
	<section class="ftco-section ftco-cart bg-light">
    <div class="container">
      <div class="row justify-content-center mb-3 pb-3">
        <div class="col-md-12 heading-section text-center ftco-animate">
          <span class="subheading">Pesanan anda</span>
          <!-- <h2 class="mb-4">Mobil</h2> -->
          <p>Segera bayar mobil yang sedang Anda beli untuk dapat menikmatinya!</p>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12 ftco-animate">
          <div class="cart-list bg-white">
            <table class="table">
              <thead class="thead-primary">
                <tr class="text-center">
                  <th>&nbsp;</th>
                  <th>&nbsp;</th>
                  <th>Mobil</th>
                  <th>Harga</th>
                  <th>Status</th>
                  <th>Terbayar</th>
                  <th>Kurang</th>
                  <th>Batas Waktu</th>
                </tr>
              </thead>
              <tbody v-for="order in user.orders" :key="order.id">
                    <tr v-for="product in order.products" :key="product.id">
                        <td>
                            <v-btn text v-if="order.status_id == 2" @click="destroy(order.id)">Hapus</v-btn>
                        </td>
                        <td><v-img width="150" :src="`/storage/${product.product_model.image}`"></v-img></td>
                        <td>{{product.product_model.name}} Type {{product.name}}</td>
                        <td>Rp. {{product.price.toLocaleString()}}</td>
                        <td>{{order.order_status == null ? 'Pending' : order.order_status.name}}</td>
                        <td>Rp. {{order.paid ? parseInt(order.paid).toLocaleString() : 0}}</td>
                        <td>Rp. {{order.paid ? (order.total_amount - parseInt(order.paid)).toLocaleString() : 0}}</td>
                        <td>{{moment(order.created_at).add(6,'M').format('LLLL')}}</td>
                    </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
</section>
</template>

<script>
import moment from 'moment'
require('moment/locale/id')
export default {

  name: 'OrderComponent',

  data() {
    return {
        user:{}
    };
  },
  mounted(){
      this.getAuth()
  },
  methods:{
      moment,
      getAuth(){
          return new Promise((resolve,reject)=>{
              axios.get('/api/user').then(res=>{
                  this.user = res.data
              })
          })
      },
      destroy(id){
          return new Promise((resolve,reject)=>{
              const access = {
                  _method:'delete'
              }
              axios.post(`/api/v1/order/${id}`,access).then(res=>{
                  resolve(res)
                  this.getAuth()
              }).catch(err=>{
                  reject(err)
              })
          })
      }
  }
};
</script>

<style lang="css" scoped>
</style>
