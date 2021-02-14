import Foundation

public protocol Mapper {
    associatedtype Response
    associatedtype Entity
    associatedtype Domain
    associatedtype SingleDomain
    associatedtype SingleEntity
    
    func transformResponseToEntity(response: Response) -> Entity
    func transformEntityToDomain(entity: Entity) -> Domain
    func transformSingleEntityToDomain(result: SingleEntity) -> SingleDomain
}
