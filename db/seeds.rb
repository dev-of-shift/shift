

Shop.create(
  [
    {
      id: 1,
      name: "梅田"
    },
    {
      id: 2,
      name: "難波"
    },
    {
      id: 3,
      name: "天王寺"
    }
  ]
)

Place.create(
  [
    {
      id: 1,
      name: 'メンズ',
    },
    {
      id: 2,
      name: 'レディース',
    },
    {
      id: 3,
      name: 'アイテム',
    },
    {
      id: 4,
      name: 'アルバイト',
    },
    {
      id: 5,
      name: '新人',
    }
  ]
)


Worker.create (
  [
    {
      id: 1,
      shop_id: 1,
      place_id: 1,
      name:"石河",
    },
    {
      id: 2,
      shop_id: 1,
      place_id: 1,
      name:"山越",
    },
    {
      id: 3,
      shop_id: 2,
      place_id: 2,
      name:"鳥根",
    },
    {
      id: 4,
      shop_id: 3,
      place_id: 3,
      name:"青林",
    },
    {
      id: 5,
      shop_id: 1,
      place_id: 4,
      name:"岩挙",
    },
  ]
)

Worklist.create(
  [
    {
      list_num: "早",
      start_hour: 9,
      start_minutes: 30,
      end_hour: 19,
      end_minutes: 00,
    },
    {
      list_num: "中",
      start_hour: 11,
      start_minutes: 00,
      end_hour: 20,
      end_minutes: 30,
    },
    {
      list_num: "遅",
      start_hour: 12,
      start_minutes: 00,
      end_hour: 21,
      end_minutes: 30,
    },
    {
      list_num: "A",
      start_hour: 9,
      start_minutes: 30,
      end_hour: 15,
      end_minutes: 00,
    },
    {
      list_num: "B",
      start_hour: 10,
      start_minutes: 30,
      end_hour: 17,
      end_minutes: 00,
    },
  ]
)
