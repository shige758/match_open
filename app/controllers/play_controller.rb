class PlayController < ApplicationController
  def index
    #####
    # メンバー情報配列をシャッフルしたものを回戦数*12の数分つくる。それを４分割する。
    #####

    # コート数
    court = params[:coat].to_i
    # メンバー情報
    member = params[:info]
    # 回戦数
    round = params[:round].to_i
    # 必要人数
    total_count = round * (court * 4)
    # メンバー数に掛ける数
    multiplier = (total_count / member.length.to_f).ceil
    # 最終的な組み合わせ配列
    final_member_array = []

    # シャッフルしたメンバーリストをmultiplier分作ってfinal_member_arrayにまとめる
    for i in 1..multiplier
      shuffle_member_list = member.shuffle
      final_member_array = final_member_array + shuffle_member_list
    end

    # 回戦数分用意したメンバーリストを４分割する
    @split_member_array = final_member_array.in_groups_of(4, false)

  end
end