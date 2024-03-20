import SwiftUI

struct Mountain: Identifiable {
    var id: Int
    var imageName: String
    var mountainName: String
    var height: Int
    var location: String
    var information: String 
}

var mountain0 = Mountain(id: 0, imageName: "곤륜산이미지", mountainName: "곤륜산", height: 177, location: "경상북도 포항시", information: "해안가에 홀로 솟은 높이 177m의 산. 포항의 푸른 바다를 바라보며 활공할 수 있는 패러글라이딩 활공장이 자리한다. 패러글라이딩 체험을 즐기는 것 외에도 탁 트인 바다를 바라보며 가벼운 피크닉을 즐기거나 멋진 인생샷을 남길 수 있는 명소로 알려져 찾는 사람이 많다.")
var mountain1 = Mountain(id: 1, imageName: "남산이미지", mountainName: "남산", height: 270, location: "서울특별시 중구, 용산구", information: "서울특별시에 있는 산. 중구와 용산구의 경계에 있다. 높이는 해발 270m. 남산의 한자 표기는 南山. 그 뜻은 앞산을 뜻하는 것으로 유래는 조선시대의 궁궐인 경복궁에서 바라보면 바로 앞이 남산이기 때문이라고 한다. 조선시대의 한양 시가지는 사대문 안만 포함되었다. 현재 위치가 서울의 남쪽이 아닌데도 남산이라 불리는 이유는 바로 이것이다. 옛 이름으로 목멱산(木覓山), 인경산(引慶山)이 있다. 아무튼 남산은 옛 한성부의 안산(案山)이기도 하다. 남산에 올라가 보면 송신타워인 남산서울타워(舊 서울타워)가 있으며 팔각정, 남산 봉화대 등 몇몇 볼거리가 있다. 그 외엔 그다지 볼 것도 없고 뭐. 일단 정상에 올라가 보면 서울의 모든 풍경이 다 보이는 건 맞다. 그러나 서울타워에 올라가지 않는 이상은 서울타워에서 보는 광경과 남산 봉화대에서 보는 광경이 둘 다 다르다. (봉화대에선 경복궁과 저 멀리 청와대가 보인다) 야경이 대단하다고 한다.정상에서는 매일 오후 3시부터 사물놀이, 무예 시범 등 관광객들을 위한 전통 공연이 열린다. 개화 시기에는 야외식물원 또는 산책로를 따라 꽃구경 하기에도 좋은 곳인데 의외로 잘 알려지지 않았다. 엄연히 산이지만 험한 코스가 없고 야간에는 가로등이 곳곳에서 밝혀주기에 24시간 아무런 제재 없이 출입이 가능하다.")
var mountain2 = Mountain(id: 2, imageName: "내연산이미지", mountainName: "내연산", height: 710, location: "경상북도 포항시", information: "경상북도 포항과 영덕에 걸쳐 있는 해발 710m의 산이다. 최고봉인 향로봉은 높이가 930m 정도이다. 포항의 유명 사찰인 보경사가 내연산 입구에 있다. 그리 높지 않고 내려다볼 수 있는 조망도 없지만 독특한 12개의 폭포를 품고 있는 아름다운 경치로 인해 영남의 금강산이라 불리운다. 경상도판 설악산 & 장가계. 금강산의 다양한 모습을 그린 겸재 정선[1]도 인정한 아름다움. 관음폭포와 그 위에 선 구름다리의 모습이 특히 아름답다.")

struct MountainListView: View {
    // List는 identifiable을 충족해야 함
    var mountainList: [Mountain] = [mountain0, mountain1, mountain2]
    
    var body: some View {
        NavigationSplitView {
            List(mountainList, id: \.id) { mountain in 
                NavigationLink(mountain.mountainName, destination: MountainView(mountain: mountain))
            }
        } detail: {
            
        }
    }
}
