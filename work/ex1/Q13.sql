-- storeテーブルとaddressテーブルを結合させよ。
SELECT address.address_id, address, address2, district, city_id, postal_code, phone, store_id, manager_staff_id, store.last_update, address.last_update
FROM address LEFT OUTER JOIN store ON address.address_id = store.address_id;