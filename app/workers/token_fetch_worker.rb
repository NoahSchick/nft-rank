class TokenFetchWorker
  include Sidekiq::Worker

  def perform
    project = Project.find(1)

    token = HTTParty.get("https://ipfs.io/ipfs/QmeREDznqCuYGELWkX3RHPktZiQqpTxdNVx94QrywRcVZf/2468").body
    token = JSON.parse(token)
    # puts token

    @token = project.tokens.find_or_create_by(name: token["name"])
    # image = token["image"].gsub!("ipfs://", "https://ipfs.io/ipfs/")
    @token.image = token["image"]
    # https://ipfs.io/ipfs/bafybeia63b5uwzf5ipqcgicy3vujv6ak7czf7juej6mte775p6un7ergri/2468.png

    puts "Saving traits for #{@token.name}"

    # 1000.times do |s|
    # end
    token["attributes"].each do |attr|
      type = TraitType.find_or_create_by(project: project, name: attr["name"])
      option = TraitOption.find_or_create_by(project: project, trait_type: type, name: attr["value"])
      value = TraitValue.find_or_create_by(trait_option: option, token: @token)
    end

    # TokenRankWorker.perform_async

  end
end
