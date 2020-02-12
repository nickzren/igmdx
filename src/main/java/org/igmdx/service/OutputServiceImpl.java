package org.igmdx.service;

import model.Gene;
import global.Data;
import java.util.Collection;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author nick
 */
@Path("/gene")
@Consumes(MediaType.APPLICATION_XML)
@Produces(MediaType.APPLICATION_XML)
public class OutputServiceImpl implements OutputService {

    @Override
    @GET
    @Path("/{gene}/get")
    public Gene[] getGene(@PathParam("gene") String gene) {
        Collection<Gene> genes =Data.geneMap.get(gene);
        return genes.toArray(new Gene[genes.size()]);
    }

    @Override
    @GET
    @Path("/getAll")
    public Gene[] getAllGenes() {        
        Collection<Gene> genes = Data.geneMap.values();
        return genes.toArray(new Gene[genes.size()]);
    }
}
